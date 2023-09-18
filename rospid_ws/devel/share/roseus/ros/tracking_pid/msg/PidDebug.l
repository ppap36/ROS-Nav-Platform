;; Auto-generated. Do not edit!


(when (boundp 'tracking_pid::PidDebug)
  (if (not (find-package "TRACKING_PID"))
    (make-package "TRACKING_PID"))
  (shadow 'PidDebug (find-package "TRACKING_PID")))
(unless (find-package "TRACKING_PID::PIDDEBUG")
  (make-package "TRACKING_PID::PIDDEBUG"))

(in-package "ROS")
;;//! \htmlinclude PidDebug.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass tracking_pid::PidDebug
  :super ros::object
  :slots (_error _proportional _integral _derivative _feedforward _raw_error _scale_long_control ))

(defmethod tracking_pid::PidDebug
  (:init
   (&key
    ((:error __error) (instance geometry_msgs::Twist :init))
    ((:proportional __proportional) (instance geometry_msgs::Twist :init))
    ((:integral __integral) (instance geometry_msgs::Twist :init))
    ((:derivative __derivative) (instance geometry_msgs::Twist :init))
    ((:feedforward __feedforward) (instance geometry_msgs::Twist :init))
    ((:raw_error __raw_error) (instance geometry_msgs::Twist :init))
    ((:scale_long_control __scale_long_control) 0.0)
    )
   (send-super :init)
   (setq _error __error)
   (setq _proportional __proportional)
   (setq _integral __integral)
   (setq _derivative __derivative)
   (setq _feedforward __feedforward)
   (setq _raw_error __raw_error)
   (setq _scale_long_control (float __scale_long_control))
   self)
  (:error
   (&rest __error)
   (if (keywordp (car __error))
       (send* _error __error)
     (progn
       (if __error (setq _error (car __error)))
       _error)))
  (:proportional
   (&rest __proportional)
   (if (keywordp (car __proportional))
       (send* _proportional __proportional)
     (progn
       (if __proportional (setq _proportional (car __proportional)))
       _proportional)))
  (:integral
   (&rest __integral)
   (if (keywordp (car __integral))
       (send* _integral __integral)
     (progn
       (if __integral (setq _integral (car __integral)))
       _integral)))
  (:derivative
   (&rest __derivative)
   (if (keywordp (car __derivative))
       (send* _derivative __derivative)
     (progn
       (if __derivative (setq _derivative (car __derivative)))
       _derivative)))
  (:feedforward
   (&rest __feedforward)
   (if (keywordp (car __feedforward))
       (send* _feedforward __feedforward)
     (progn
       (if __feedforward (setq _feedforward (car __feedforward)))
       _feedforward)))
  (:raw_error
   (&rest __raw_error)
   (if (keywordp (car __raw_error))
       (send* _raw_error __raw_error)
     (progn
       (if __raw_error (setq _raw_error (car __raw_error)))
       _raw_error)))
  (:scale_long_control
   (&optional __scale_long_control)
   (if __scale_long_control (setq _scale_long_control __scale_long_control)) _scale_long_control)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Twist _error
    (send _error :serialization-length)
    ;; geometry_msgs/Twist _proportional
    (send _proportional :serialization-length)
    ;; geometry_msgs/Twist _integral
    (send _integral :serialization-length)
    ;; geometry_msgs/Twist _derivative
    (send _derivative :serialization-length)
    ;; geometry_msgs/Twist _feedforward
    (send _feedforward :serialization-length)
    ;; geometry_msgs/Twist _raw_error
    (send _raw_error :serialization-length)
    ;; float32 _scale_long_control
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Twist _error
       (send _error :serialize s)
     ;; geometry_msgs/Twist _proportional
       (send _proportional :serialize s)
     ;; geometry_msgs/Twist _integral
       (send _integral :serialize s)
     ;; geometry_msgs/Twist _derivative
       (send _derivative :serialize s)
     ;; geometry_msgs/Twist _feedforward
       (send _feedforward :serialize s)
     ;; geometry_msgs/Twist _raw_error
       (send _raw_error :serialize s)
     ;; float32 _scale_long_control
       (sys::poke _scale_long_control (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Twist _error
     (send _error :deserialize buf ptr-) (incf ptr- (send _error :serialization-length))
   ;; geometry_msgs/Twist _proportional
     (send _proportional :deserialize buf ptr-) (incf ptr- (send _proportional :serialization-length))
   ;; geometry_msgs/Twist _integral
     (send _integral :deserialize buf ptr-) (incf ptr- (send _integral :serialization-length))
   ;; geometry_msgs/Twist _derivative
     (send _derivative :deserialize buf ptr-) (incf ptr- (send _derivative :serialization-length))
   ;; geometry_msgs/Twist _feedforward
     (send _feedforward :deserialize buf ptr-) (incf ptr- (send _feedforward :serialization-length))
   ;; geometry_msgs/Twist _raw_error
     (send _raw_error :deserialize buf ptr-) (incf ptr- (send _raw_error :serialization-length))
   ;; float32 _scale_long_control
     (setq _scale_long_control (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tracking_pid::PidDebug :md5sum-) "9e084788031037458fcbdc7432057e27")
(setf (get tracking_pid::PidDebug :datatype-) "tracking_pid/PidDebug")
(setf (get tracking_pid::PidDebug :definition-)
      "geometry_msgs/Twist error
geometry_msgs/Twist proportional
geometry_msgs/Twist integral
geometry_msgs/Twist derivative
geometry_msgs/Twist feedforward
geometry_msgs/Twist raw_error
float32 scale_long_control

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



(provide :tracking_pid/PidDebug "9e084788031037458fcbdc7432057e27")


