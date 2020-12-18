; Auto-generated. Do not edit!


(cl:in-package sensor_imulator-msg)


;//! \htmlinclude speed.msg.html

(cl:defclass <speed> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (data
    :reader data
    :initarg :data
    :type cl:float
    :initform 0.0)
   (pos
    :reader pos
    :initarg :pos
    :type cl:float
    :initform 0.0))
)

(cl:defclass speed (<speed>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <speed>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'speed)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_imulator-msg:<speed> is deprecated: use sensor_imulator-msg:speed instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <speed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_imulator-msg:header-val is deprecated.  Use sensor_imulator-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <speed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_imulator-msg:data-val is deprecated.  Use sensor_imulator-msg:data instead.")
  (data m))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <speed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_imulator-msg:pos-val is deprecated.  Use sensor_imulator-msg:pos instead.")
  (pos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <speed>) ostream)
  "Serializes a message object of type '<speed>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <speed>) istream)
  "Deserializes a message object of type '<speed>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'data) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pos) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<speed>)))
  "Returns string type for a message object of type '<speed>"
  "sensor_imulator/speed")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'speed)))
  "Returns string type for a message object of type 'speed"
  "sensor_imulator/speed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<speed>)))
  "Returns md5sum for a message object of type '<speed>"
  "526298e06e706a491f1056b1beda5a42")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'speed)))
  "Returns md5sum for a message object of type 'speed"
  "526298e06e706a491f1056b1beda5a42")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<speed>)))
  "Returns full string definition for message of type '<speed>"
  (cl:format cl:nil "std_msgs/Header header~%float32 data~%float32 pos~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'speed)))
  "Returns full string definition for message of type 'speed"
  (cl:format cl:nil "std_msgs/Header header~%float32 data~%float32 pos~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <speed>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <speed>))
  "Converts a ROS message object to a list"
  (cl:list 'speed
    (cl:cons ':header (header msg))
    (cl:cons ':data (data msg))
    (cl:cons ':pos (pos msg))
))
