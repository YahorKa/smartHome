;; Auto-generated. Do not edit!


(when (boundp 'sensor_imulator::speed)
  (if (not (find-package "SENSOR_IMULATOR"))
    (make-package "SENSOR_IMULATOR"))
  (shadow 'speed (find-package "SENSOR_IMULATOR")))
(unless (find-package "SENSOR_IMULATOR::SPEED")
  (make-package "SENSOR_IMULATOR::SPEED"))

(in-package "ROS")
;;//! \htmlinclude speed.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sensor_imulator::speed
  :super ros::object
  :slots (_header _data _pos ))

(defmethod sensor_imulator::speed
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:data __data) 0.0)
    ((:pos __pos) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _data (float __data))
   (setq _pos (float __pos))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:pos
   (&optional __pos)
   (if __pos (setq _pos __pos)) _pos)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _data
    4
    ;; float32 _pos
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _data
       (sys::poke _data (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pos
       (sys::poke _pos (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _data
     (setq _data (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pos
     (setq _pos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get sensor_imulator::speed :md5sum-) "526298e06e706a491f1056b1beda5a42")
(setf (get sensor_imulator::speed :datatype-) "sensor_imulator/speed")
(setf (get sensor_imulator::speed :definition-)
      "std_msgs/Header header
float32 data
float32 pos

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

")



(provide :sensor_imulator/speed "526298e06e706a491f1056b1beda5a42")


