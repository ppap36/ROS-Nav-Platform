;; Auto-generated. Do not edit!


(when (boundp 'tracking_pid::FollowPathResult)
  (if (not (find-package "TRACKING_PID"))
    (make-package "TRACKING_PID"))
  (shadow 'FollowPathResult (find-package "TRACKING_PID")))
(unless (find-package "TRACKING_PID::FOLLOWPATHRESULT")
  (make-package "TRACKING_PID::FOLLOWPATHRESULT"))

(in-package "ROS")
;;//! \htmlinclude FollowPathResult.msg.html


(defclass tracking_pid::FollowPathResult
  :super ros::object
  :slots ())

(defmethod tracking_pid::FollowPathResult
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get tracking_pid::FollowPathResult :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get tracking_pid::FollowPathResult :datatype-) "tracking_pid/FollowPathResult")
(setf (get tracking_pid::FollowPathResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#result definition

")



(provide :tracking_pid/FollowPathResult "d41d8cd98f00b204e9800998ecf8427e")


