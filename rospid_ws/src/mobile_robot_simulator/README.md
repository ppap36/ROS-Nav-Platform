# mobile_robot_simulator
A simple ROS simulator for mobile robots. Two nodes are included, that simulate a mobile base and a laser scanner. 
This is useful if some high-level simulation is needed. The package is inspired by the industrial_robot_simulator package in ROS Industrial.

The package includes two nodes, as well as a library for each of the simulators to include in other projects. For most uses, the included launch file should be sufficient -- see description of parameters for each node below.

## mobile_robot_simulator_node
Subscribes to incoming velocity commands, and updates odometry based on this. Also (optionally) publishes localization on tf.

### Publications
- `/odom` (nav_msgs/Odometry) - odometry of the mobile robot, calculated based on the incoming velocity commands
- `/tf` - publishes 2 transforms: /odom -> /base_link and /map -> /odom (last transform optional)

### Subscriptions
- `/cmd_vel` (geometry_msgs/Twist) - velocity commands 
- `/initialpose` (geometry_msgs/PoseWithCovarianceStamped) - (optional) current pose estimate of the robot with respect to the /map frame

### Parameters
- `publish_map_transform` - whether to publish the  /map -> /odom transform. Default value: `false`
- `publish_rate` - rate of the simulations loop -- and thus the published topics. Default value: `10.0`
- `velocity_topic` - topic for subscribed velocity commands. Default value: `/cmd_vel`
- `odometry_topic` - topic for publishing odometry messages. Default value: `/odom`


## laser_scanner_simulator_node
Does raytracing on an available occupancy grid map, using [1]. Optionally includes the noise model from [2] and applies it on the ranges. Default laser parameters are those of a Sick S300 laser range scanner.

### Publications
- `/scan` (sensor_msgs/LaserScan) - simulated laser scan, constructed by raytracing the occupancy grid map

### Called services
- `/static_map` (nav_msgs/GetMap) - service that returns the occupancy grid map (as provided by the `map_server` package)

### Parameters
- `laser_topic` - topic for publishing the laser scan. Default value: `/scan`
- `map_service` - service to get the map from. Default value: `/static_map`

Laser scanner parameters:

- `laser_frame_id` - frame_id of the laser scanner. Default value: `/base_link`
- `laser_fov` - field of view of the laser scanner in radians. Default value: `4.71` (270 degrees)
- `laser_beam_count` - number of beams per laser scan . Default value: `541`
- `laser_max_range` - maximum range of the laser scanner in meters. Default value: `30.0`
- `laser_min_range` - minimum range of the laser scanner in meters. Default value: `0.05`
- `laser_frequency` - frequency of the laser scanner (and thus of the publisher). Default value: `10.0`

Noise model parameters (see [2]):

- `apply_noise` - whether to apply the noise model. Default value: `true`
- `sigma_hit` - standard deviation for gaussian noise on good readings. Default value: `0.005`
- `lambda_short` - lambda coefficient for exponential distribution that determines short readings. Default value: `2`

Noise model mixing coefficients. Ideally, these should be normalized, if not the node will normalize before applying the parameters:
- `z_hit` - coefficient for good readings. Default value: `0.995`
- `z_short` - coefficient for short readings. Default value: `0.0`
- `z_max` - coefficient for readings with maximum range. Default value: `0.005`
- `z_rand` - coefficient for "phantom", random, readings. Default value: `0.0`

## References

1. J. Amanatides, A. Woo, "A Fast Voxel Traversal Algorithm for Ray Tracing", University of Toronto, 2010
2. D. Fox, S. Thrun, W. Burgard, "Probabilistic Robotics", MIT Press, 2006, ISBN: 978-0262201629 (noise model is in chapter 6)
