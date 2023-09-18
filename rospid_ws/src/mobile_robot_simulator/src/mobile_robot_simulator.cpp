#include "ros/ros.h"

#include "mobile_robot_simulator/mobile_robot_simulator.h"

MobileRobotSimulator::MobileRobotSimulator(ros::NodeHandle *nh)
{
    nh_ptr = nh;
    // get parameters
    get_params();
    odom_pub = nh_ptr->advertise<nav_msgs::Odometry>(odometry_topic,50); // odometry publisher
    vel_sub = nh_ptr->subscribe(velocity_topic,5,&MobileRobotSimulator::vel_callback,this); // velocity subscriber
    
    // initialize timers
    last_update = ros::Time::now();
    last_vel = last_update - ros::Duration(0.1);
    // initialize forst odom message
    update_odom_from_vel(geometry_msgs::Twist(), ros::Duration(0.1));
    odom.header.stamp = last_update;
    get_tf_from_odom(odom);
    // Initialize tf from map to odom
    if (publish_map_transform)
    {
        init_pose_sub = nh_ptr->subscribe("/initialpose",5,&MobileRobotSimulator::init_pose_callback,this); // initial pose callback
        map_trans.frame_id_ = "/map";
        map_trans.stamp_ = last_update;
        map_trans.child_frame_id_ = "/odom";
        map_trans.setIdentity();
    }
    
    ROS_INFO("Initialized mobile robot simulator");
    
}

MobileRobotSimulator::~MobileRobotSimulator()
{
    if (is_running) stop();
}

void MobileRobotSimulator::get_params()
{
     nh_ptr->param<bool>("publish_map_transform", publish_map_transform , false);
     nh_ptr->param<double>("publish_rate", publish_rate, 10.0);
     nh_ptr->param<std::string>("velocity_topic", velocity_topic, "/cmd_vel");
     nh_ptr->param<std::string>("odometry_topic", odometry_topic, "/odom");
}


void MobileRobotSimulator::start()
{
    loop_timer = nh_ptr->createTimer(ros::Duration(1.0/publish_rate),&MobileRobotSimulator::update_loop, this);
    loop_timer.start(); // should not be necessary
    is_running = true;
    ROS_INFO("Started mobile robot simulator update loop, listening on cmd_vel topic");
}

void MobileRobotSimulator::stop()
{
    loop_timer.stop();
    is_running = false;
    ROS_INFO("Stopped mobile robot simulator");
}

void MobileRobotSimulator::update_loop(const ros::TimerEvent& event)
{
    last_update = event.current_real;
    // If we didn't receive a message, send the old odometry info with a new timestamp
    if (!message_received)
    {
        odom.header.stamp = last_update;
        odom_trans.stamp_ = last_update;
    }
    // publish odometry and tf
    odom_pub.publish(odom);
    get_tf_from_odom(odom);
    tf_broadcaster.sendTransform(odom_trans); // odom -> base_link
    message_received = false;
    // should we publish the map transform?
    if (!publish_map_transform) return;
    map_trans.stamp_ = last_update;
    tf_broadcaster.sendTransform(map_trans); // map -> odom
}

void MobileRobotSimulator::update_odom_from_vel(geometry_msgs::Twist vel, ros::Duration time_diff)
{
    ROS_DEBUG_STREAM("Velocity - x: " << vel.linear.x << " y: " << vel.linear.y << " th: " << vel.angular.z);
    //compute odometry in a typical way given the velocities of the robot
    double delta_x = (vel.linear.x * cos(th) - vel.linear.y * sin(th)) * time_diff.toSec();
    double delta_y = (vel.linear.x * sin(th) + vel.linear.y * cos(th)) * time_diff.toSec();
    double delta_th = vel.angular.z * time_diff.toSec();
    ROS_DEBUG_STREAM("Delta - x: " << delta_x << " y: " << delta_y << " th: " << delta_th);
    
    // update odometry
    odom.header.stamp = measure_time;
    odom.header.frame_id = "odom";
    odom.pose.pose.position.x += delta_x;
    odom.pose.pose.position.y += delta_y;
    // generate quaternion based on current yaw
    th += delta_th;
    odom.pose.pose.orientation = tf::createQuaternionMsgFromYaw(th);
    // set velocity
    odom.child_frame_id = "base_link";
    odom.twist.twist = vel;
    ROS_DEBUG_STREAM("Odometry - x: " << odom.pose.pose.position.x << " y: " << odom.pose.pose.position.y << " th: " << th);
}

void MobileRobotSimulator::get_tf_from_odom(nav_msgs::Odometry odom)
{
    geometry_msgs::TransformStamped odom_tmp;
    // copy from odmoetry message
    odom_tmp.header = odom.header;
    odom_tmp.child_frame_id = odom.child_frame_id;
    odom_tmp.transform.translation.x = odom.pose.pose.position.x;
    odom_tmp.transform.translation.y = odom.pose.pose.position.y;
    odom_tmp.transform.translation.z = 0.0;
    odom_tmp.transform.rotation = odom.pose.pose.orientation;
    // convert and update
    tf::transformStampedMsgToTF(odom_tmp, odom_trans);
}

void MobileRobotSimulator::vel_callback(const geometry_msgs::Twist::ConstPtr& msg)
{
    ROS_DEBUG("Received message on cmd_vel");
    measure_time = ros::Time::now();
    ros::Duration dt = measure_time - last_vel;
    last_vel = measure_time;
    if (dt >= ros::Duration(0.5)) dt = ros::Duration(0.1);
    message_received = true;
    geometry_msgs::Twist vel = *msg;
    update_odom_from_vel(vel,dt);
}

void MobileRobotSimulator::init_pose_callback(const geometry_msgs::PoseWithCovarianceStamped::ConstPtr& msg)
{
    if (msg->header.frame_id != "map") {
        ROS_ERROR("Initial pose not specified in map frame, ignoring");
        return;
    }
    ROS_INFO("Received pose estimate of mobile base");
    
    // msg is map -> base_link
    tf::StampedTransform msg_t;
    msg_t.setOrigin(tf::Vector3(msg->pose.pose.position.x,msg->pose.pose.position.y,msg->pose.pose.position.z));
    msg_t.setRotation(tf::Quaternion(msg->pose.pose.orientation.x,msg->pose.pose.orientation.y,msg->pose.pose.orientation.z,msg->pose.pose.orientation.w));
    ROS_DEBUG_STREAM("map -> base_link - x: " << msg_t.getOrigin().getX() << " y: " << msg_t.getOrigin().getY());
    // get odom -> base_link
    ROS_DEBUG_STREAM("odom -> base_link - x: " << odom_trans.getOrigin().getX() << " y: " << odom_trans.getOrigin().getY());
    // calculate map -> odom and save as stamped
    tf::StampedTransform map_t = tf::StampedTransform(msg_t * odom_trans.inverse(), msg->header.stamp, "map", "odom");
    ROS_DEBUG_STREAM("map -> odom - x: " << map_t.getOrigin().getX() << " y: " << map_t.getOrigin().getY());
    map_trans = map_t;    
}



