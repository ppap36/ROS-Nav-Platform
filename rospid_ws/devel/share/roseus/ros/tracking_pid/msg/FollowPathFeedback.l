;; Auto-generated. Do not edit!


(when (boundp 'tracking_pid::FollowPathFeedback)
  (if (not (find-package "TRACKING_PID"))
    (make-package "TRACKING_PID"))
  (shadow 'FollowPathFeedback (find-package "TRACKING_PID")))
(unless (find-package "TRACKING_PID::FOLLOWPATHFEEDBACK")
  (make-package "TRACKING_PID::FOLLOWPATHFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude FollowPathFeedback.msg.html


(defclass tracking_pid::FollowPathFeedback
  :super ros::object
  :slots (_progress ))

(defmethod tracking_pid::FollowPathFeedback
  (:init
   (&key
    ((:progress __progress) 0.0)
    )
   (send-super :init)
   (setq _progress (float __progress))
   self)
  (:progress
   (&optional __progress)
   (if __progress (setq _progress __progress)) _progress)
  (:serialization-length
   ()
   (+
    ;; float32 _progress
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _progress
       (sys::poke _progress (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _progress
     (setq _progress (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tracking_pid::FollowPathFeedback :md5sum-) "70805092fd20e110765c7b79e8efb737")
(setf (get tracking_pid::FollowPathFeedback :datatype-) "tracking_pid/FollowPathFeedback")
(setf (get tracking_pid::FollowPathFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#feedback
float32 progress

")



(provide :tracking_pid/FollowPathFeedback "70805092fd20e110765c7b79e8efb737")


