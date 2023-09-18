#include "ros/ros.h"

#include "mobile_robot_simulator/mobile_robot_simulator.h"
#include "mobile_robot_simulator/laser_simulator.h"

int main(int argc, char **argv)
{
    ros::init(argc,argv, "mobile_robot_simulator");
    ros::NodeHandle nh;
    
    // global rate
    float rate = 10.0;
    
    MobileRobotSimulator mob_sim(&nh);
    LaserScannerSimulator laser_sim(&nh);
    
    ROS_INFO("--- Starting simulator");
    
    ros::Duration(1.0).sleep();
    ros::AsyncSpinner spinner(2);
    
    mob_sim.publish_map_transform = true;
    mob_sim.start();
    laser_sim.start();
    
    ros::Time tic = ros::Time::now();
    
    spinner.start();
    while (nh.ok() && ros::Time::now()-tic<ros::Duration(10.0)) {
        //ros::spinOnce();
        ros::Duration(0.01).sleep();
    }
    spinner.stop();
    
    ROS_INFO("--- Stopping simulator");
    
    mob_sim.stop();
    laser_sim.stop();
    
    tic = ros::Time::now();
    while (nh.ok() && ros::Time::now()-tic<ros::Duration(5.0)) {
        ros::spinOnce();
        ros::Duration(0.01).sleep();
    }
    
    return 0;
    
} // end main
