;; Auto-generated. Do not edit!


(when (boundp 'tracking_pid::traj_point)
  (if (not (find-package "TRACKING_PID"))
    (make-package "TRACKING_PID"))
  (shadow 'traj_point (find-package "TRACKING_PID")))
(unless (find-package "TRACKING_PID::TRAJ_POINT")
  (make-package "TRACKING_PID::TRAJ_POINT"))

(in-package "ROS")
;;//! \htmlinclude traj_point.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tracking_pid::traj_point
  :super ros::object
  :slots (_time _controller _pose _velocity _acceleration ))

(defmethod tracking_pid::traj_point
  (:init
   (&key
    ((:time __time) (instance std_msgs::Float64 :init))
    ((:controller __controller) (instance std_msgs::Int8 :init))
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    ((:velocity __velocity) (instance geometry_msgs::Twist :init))
    ((:acceleration __acceleration) (instance geometry_msgs::Twist :init))
    )
   (send-super :init)
   (setq _time __time)
   (setq _controller __controller)
   (setq _pose __pose)
   (setq _velocity __velocity)
   (setq _acceleration __acceleration)
   self)
  (:time
   (&rest __time)
   (if (keywordp (car __time))
       (send* _time __time)
     (progn
       (if __time (setq _time (car __time)))
       _time)))
  (:controller
   (&rest __controller)
   (if (keywordp (car __controller))
       (send* _controller __controller)
     (progn
       (if __controller (setq _controller (car __controller)))
       _controller)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:acceleration
   (&rest __acceleration)
   (if (keywordp (car __acceleration))
       (send* _acceleration __acceleration)
     (progn
       (if __acceleration (setq _acceleration (car __acceleration)))
       _acceleration)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float64 _time
    (send _time :serialization-length)
    ;; std_msgs/Int8 _controller
    (send _controller :serialization-length)
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/Twist _velocity
    (send _velocity :serialization-length)
    ;; geometry_msgs/Twist _acceleration
    (send _acceleration :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float64 _time
       (send _time :serialize s)
     ;; std_msgs/Int8 _controller
       (send _controller :serialize s)
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;; geometry_msgs/Twist _velocity
       (send _velocity :serialize s)
     ;; geometry_msgs/Twist _acceleration
       (send _acceleration :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float64 _time
     (send _time :deserialize buf ptr-) (incf ptr- (send _time :serialization-length))
   ;; std_msgs/Int8 _controller
     (send _controller :deserialize buf ptr-) (incf ptr- (send _controller :serialization-length))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/Twist _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; geometry_msgs/Twist _acceleration
     (send _acceleration :deserialize buf ptr-) (incf ptr- (send _acceleration :serialization-length))
   ;;
   self)
  )

(setf (get tracking_pid::traj_point :md5sum-) "9a6dcb3368f8efd41f0dc15e14484b23")
(setf (get tracking_pid::traj_point :datatype-) "tracking_pid/traj_point")
(setf (get tracking_pid::traj_point :definition-)
      "std_msgs/Float64 time
std_msgs/Int8 controller
geometry_msgs/PoseStamped pose
geometry_msgs/Twist velocity
geometry_msgs/Twist acceleration

================================================================================
MSG: std_msgs/Float64
float64 data
================================================================================
MSG: std_msgs/Int8
int8 data

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :tracking_pid/traj_point "9a6dcb3368f8efd41f0dc15e14484b23")


