# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "actionlib;actionlib_msgs;angles;dynamic_reconfigure;geometry_msgs;message_runtime;nav_msgs;roscpp;std_msgs;tf;tf2_geometry_msgs;tf2_ros;visualization_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-ltracking_pid".split(';') if "-ltracking_pid" != "" else []
PROJECT_NAME = "tracking_pid"
PROJECT_SPACE_DIR = "/root/rospid_ws/install"
PROJECT_VERSION = "2.2.0"
