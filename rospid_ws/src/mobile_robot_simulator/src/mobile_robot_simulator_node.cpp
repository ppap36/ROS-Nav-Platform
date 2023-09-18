#include "ros/ros.h"

#include "mobile_robot_simulator/mobile_robot_simulator.h"

int main(int argc, char **argv)
{
    ros::init(argc,argv, "mobile_robot_simulator");
    ros::NodeHandle nh("~");
    ros::Duration(0.1).sleep();
    
    MobileRobotSimulator mob_sim(&nh);
    ros::AsyncSpinner spinner(1);
    
    ROS_INFO("--- Starting MobileRobot simulator");
    
    ros::Duration(0.1).sleep();
     
    mob_sim.start();
    
    spinner.start();
    while (nh.ok()) {
        //ros::spinOnce();
        ros::Duration(0.01).sleep();
    }
    spinner.stop();
    
    mob_sim.stop();
    
    return 0;
    
} // end main
