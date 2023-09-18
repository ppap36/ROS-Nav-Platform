; Auto-generated. Do not edit!


(cl:in-package tracking_pid-msg)


;//! \htmlinclude PidDebug.msg.html

(cl:defclass <PidDebug> (roslisp-msg-protocol:ros-message)
  ((error
    :reader error
    :initarg :error
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (proportional
    :reader proportional
    :initarg :proportional
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (integral
    :reader integral
    :initarg :integral
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (derivative
    :reader derivative
    :initarg :derivative
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (feedforward
    :reader feedforward
    :initarg :feedforward
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (raw_error
    :reader raw_error
    :initarg :raw_error
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (scale_long_control
    :reader scale_long_control
    :initarg :scale_long_control
    :type cl:float
    :initform 0.0))
)

(cl:defclass PidDebug (<PidDebug>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PidDebug>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PidDebug)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tracking_pid-msg:<PidDebug> is deprecated: use tracking_pid-msg:PidDebug instead.")))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <PidDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tracking_pid-msg:error-val is deprecated.  Use tracking_pid-msg:error instead.")
  (error m))

(cl:ensure-generic-function 'proportional-val :lambda-list '(m))
(cl:defmethod proportional-val ((m <PidDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tracking_pid-msg:proportional-val is deprecated.  Use tracking_pid-msg:proportional instead.")
  (proportional m))

(cl:ensure-generic-function 'integral-val :lambda-list '(m))
(cl:defmethod integral-val ((m <PidDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tracking_pid-msg:integral-val is deprecated.  Use tracking_pid-msg:integral instead.")
  (integral m))

(cl:ensure-generic-function 'derivative-val :lambda-list '(m))
(cl:defmethod derivative-val ((m <PidDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tracking_pid-msg:derivative-val is deprecated.  Use tracking_pid-msg:derivative instead.")
  (derivative m))

(cl:ensure-generic-function 'feedforward-val :lambda-list '(m))
(cl:defmethod feedforward-val ((m <PidDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tracking_pid-msg:feedforward-val is deprecated.  Use tracking_pid-msg:feedforward instead.")
  (feedforward m))

(cl:ensure-generic-function 'raw_error-val :lambda-list '(m))
(cl:defmethod raw_error-val ((m <PidDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tracking_pid-msg:raw_error-val is deprecated.  Use tracking_pid-msg:raw_error instead.")
  (raw_error m))

(cl:ensure-generic-function 'scale_long_control-val :lambda-list '(m))
(cl:defmethod scale_long_control-val ((m <PidDebug>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tracking_pid-msg:scale_long_control-val is deprecated.  Use tracking_pid-msg:scale_long_control instead.")
  (scale_long_control m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PidDebug>) ostream)
  "Serializes a message object of type '<PidDebug>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'error) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'proportional) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'integral) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'derivative) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'feedforward) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'raw_error) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'scale_long_control))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PidDebug>) istream)
  "Deserializes a message object of type '<PidDebug>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'error) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'proportional) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'integral) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'derivative) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'feedforward) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'raw_error) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'scale_long_control) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PidDebug>)))
  "Returns string type for a message object of type '<PidDebug>"
  "tracking_pid/PidDebug")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PidDebug)))
  "Returns string type for a message object of type 'PidDebug"
  "tracking_pid/PidDebug")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PidDebug>)))
  "Returns md5sum for a message object of type '<PidDebug>"
  "9e084788031037458fcbdc7432057e27")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PidDebug)))
  "Returns md5sum for a message object of type 'PidDebug"
  "9e084788031037458fcbdc7432057e27")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PidDebug>)))
  "Returns full string definition for message of type '<PidDebug>"
  (cl:format cl:nil "geometry_msgs/Twist error~%geometry_msgs/Twist proportional~%geometry_msgs/Twist integral~%geometry_msgs/Twist derivative~%geometry_msgs/Twist feedforward~%geometry_msgs/Twist raw_error~%float32 scale_long_control~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PidDebug)))
  "Returns full string definition for message of type 'PidDebug"
  (cl:format cl:nil "geometry_msgs/Twist error~%geometry_msgs/Twist proportional~%geometry_msgs/Twist integral~%geometry_msgs/Twist derivative~%geometry_msgs/Twist feedforward~%geometry_msgs/Twist raw_error~%float32 scale_long_control~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PidDebug>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'error))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'proportional))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'integral))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'derivative))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'feedforward))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'raw_error))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PidDebug>))
  "Converts a ROS message object to a list"
  (cl:list 'PidDebug
    (cl:cons ':error (error msg))
    (cl:cons ':proportional (proportional msg))
    (cl:cons ':integral (integral msg))
    (cl:cons ':derivative (derivative msg))
    (cl:cons ':feedforward (feedforward msg))
    (cl:cons ':raw_error (raw_error msg))
    (cl:cons ':scale_long_control (scale_long_control msg))
))
