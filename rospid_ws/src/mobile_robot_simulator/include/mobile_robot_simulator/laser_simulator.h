#include "ros/ros.h"
#include "ros/console.h"

#include "nav_msgs/OccupancyGrid.h"
#include "nav_msgs/GetMap.h"
#include "sensor_msgs/LaserScan.h"

#include "tf/transform_datatypes.h"
#include <tf/transform_listener.h>

#include <math.h>
#include <random>

#ifndef LASER_SIMULATOR
#define LASER_SIMULATOR

class LaserScannerSimulator {
    
public:

    LaserScannerSimulator(ros::NodeHandle *nh);
    ~LaserScannerSimulator();
    
    /*! updates the laser scanner parameters */
    void set_laser_params(std::string frame_id, double fov, unsigned int beam_count, double max_range, double min_range, double l_frequency);
    
    /*! updates the noise model parameters */
    void set_noise_params(bool use_model, double sigma_hit_reading, double lambda_short_reading, double z_hit, double z_short, double z_max, double z_rand); 

    /*! start the simulation loop */
    void start(); // 
    
    /*! stop everything */
    void stop();


private:

    void update_loop(const ros::TimerEvent& event);
    
    /*! gets the current map */
    void get_map();
    
    /*! gets parameters from the parameter server */
    void get_params();
    
    /*! finds the pose of the laser in the map frame */
    void get_laser_pose(double * x, double * y, double * theta);
    
    /*! updates the laser scan based on current 2D pose of the scanner in map coordinates */
    void update_scan(double x, double y, double theta);
    
    /*! raytracing, calculates intersection with the map for a single ray */
    double find_map_range(double x, double y, double theta);
    
    /*! applies sensor noise to the calculated range */
    double apply_range_noise(double range_reading);
    
    /*! get map cell corresponding to real-world coordinates */
    void get_world2map_coordinates(double x, double y, int * map_x, int * map_y);
    
    /*! get real-world coordinates of map cell */
    void get_map2world_coordinates(int map_x, int map_y, double * x, double * y);
    
    /*! get occupancy of specified cell */
    int get_map_occupancy(int x, int y);
    
    
    ros::NodeHandle * nh_ptr;
    ros::Publisher laser_pub; // scan publisher
    tf::TransformListener tl; 
    
    ros::Timer loop_timer; // timer for the update loop
    bool is_running;
    
    // map 
    std::string map_service;
    nav_msgs::OccupancyGrid map; //map data
    bool have_map;
    
    std::string l_scan_topic;
   
    // laser parameters
    std::string l_frame;
    double l_fov; // field of view, centered at pose of laser
    int l_beams; // number of beams per scan
    double l_max_range; // max range of the laser scan
    double l_min_range; // min range of the laser scan
    double l_frequency; // frequency of laser scans
    tf::StampedTransform rob_laser_tf; // transform from robot to laser (assumed static)
    
    // noise model parameters (see Probabilistic Robotics eq. 6.12)
    bool use_noise_model;
    double sigma_hit; // stddev of measurement noise
    double lambda_short; // intrinsic parameter for short readings (1/mu in exp pdf)
    double z_mix[4]; // mixing coefficients of the noise model - [z_hit, z_short, z_max, z_rand]
    // noise model distributions and generators
    std::default_random_engine rand_gen; // generator
    std::uniform_real_distribution<double> selector; // selector for which noise distribution to draw from
    std::normal_distribution<double> p_hit; // gaussian noise on detection
    std::exponential_distribution<double> p_short; // short readings
    std::uniform_real_distribution<double> p_rand; // random, "phantom" readings
    
    // output
    sensor_msgs::LaserScan output_scan;

}; // end class

#endif
