; Auto-generated. Do not edit!


(cl:in-package tracking_pid-msg)


;//! \htmlinclude traj_point.msg.html

(cl:defclass <traj_point> (roslisp-msg-protocol:ros-message)
  ((time
    :reader time
    :initarg :time
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (controller
    :reader controller
    :initarg :controller
    :type std_msgs-msg:Int8
    :initform (cl:make-instance 'std_msgs-msg:Int8))
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist)))
)

(cl:defclass traj_point (<traj_point>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <traj_point>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'traj_point)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tracking_pid-msg:<traj_point> is deprecated: use tracking_pid-msg:traj_point instead.")))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <traj_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tracking_pid-msg:time-val is deprecated.  Use tracking_pid-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'controller-val :lambda-list '(m))
(cl:defmethod controller-val ((m <traj_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tracking_pid-msg:controller-val is deprecated.  Use tracking_pid-msg:controller instead.")
  (controller m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <traj_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tracking_pid-msg:pose-val is deprecated.  Use tracking_pid-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <traj_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tracking_pid-msg:velocity-val is deprecated.  Use tracking_pid-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <traj_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tracking_pid-msg:acceleration-val is deprecated.  Use tracking_pid-msg:acceleration instead.")
  (acceleration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <traj_point>) ostream)
  "Serializes a message object of type '<traj_point>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'time) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'controller) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <traj_point>) istream)
  "Deserializes a message object of type '<traj_point>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'time) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'controller) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<traj_point>)))
  "Returns string type for a message object of type '<traj_point>"
  "tracking_pid/traj_point")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'traj_point)))
  "Returns string type for a message object of type 'traj_point"
  "tracking_pid/traj_point")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<traj_point>)))
  "Returns md5sum for a message object of type '<traj_point>"
  "9a6dcb3368f8efd41f0dc15e14484b23")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'traj_point)))
  "Returns md5sum for a message object of type 'traj_point"
  "9a6dcb3368f8efd41f0dc15e14484b23")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<traj_point>)))
  "Returns full string definition for message of type '<traj_point>"
  (cl:format cl:nil "std_msgs/Float64 time~%std_msgs/Int8 controller~%geometry_msgs/PoseStamped pose~%geometry_msgs/Twist velocity~%geometry_msgs/Twist acceleration~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/Int8~%int8 data~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'traj_point)))
  "Returns full string definition for message of type 'traj_point"
  (cl:format cl:nil "std_msgs/Float64 time~%std_msgs/Int8 controller~%geometry_msgs/PoseStamped pose~%geometry_msgs/Twist velocity~%geometry_msgs/Twist acceleration~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/Int8~%int8 data~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <traj_point>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'time))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'controller))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <traj_point>))
  "Converts a ROS message object to a list"
  (cl:list 'traj_point
    (cl:cons ':time (time msg))
    (cl:cons ':controller (controller msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':acceleration (acceleration msg))
))
