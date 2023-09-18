;; Auto-generated. Do not edit!


(when (boundp 'tracking_pid::trajectory)
  (if (not (find-package "TRACKING_PID"))
    (make-package "TRACKING_PID"))
  (shadow 'trajectory (find-package "TRACKING_PID")))
(unless (find-package "TRACKING_PID::TRAJECTORY")
  (make-package "TRACKING_PID::TRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude trajectory.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tracking_pid::trajectory
  :super ros::object
  :slots (_header _traj_id _points ))

(defmethod tracking_pid::trajectory
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:traj_id __traj_id) 0)
    ((:points __points) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _traj_id (round __traj_id))
   (setq _points __points)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:traj_id
   (&optional __traj_id)
   (if __traj_id (setq _traj_id __traj_id)) _traj_id)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _traj_id
    4
    ;; tracking_pid/traj_point[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _traj_id
       (write-long _traj_id s)
     ;; tracking_pid/traj_point[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _traj_id
     (setq _traj_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; tracking_pid/traj_point[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance tracking_pid::traj_point :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get tracking_pid::trajectory :md5sum-) "ed87fd337a12ca4024477f9f6a0e9d47")
(setf (get tracking_pid::trajectory :datatype-) "tracking_pid/trajectory")
(setf (get tracking_pid::trajectory :definition-)
      "#An array of poses, velocities and accelerations that represents a trajectory
Header header
uint32 traj_id
traj_point[] points


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
MSG: tracking_pid/traj_point
std_msgs/Float64 time
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



(provide :tracking_pid/trajectory "ed87fd337a12ca4024477f9f6a0e9d47")


