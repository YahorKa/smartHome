; Auto-generated. Do not edit!


(cl:in-package can_socket-msg)


;//! \htmlinclude msg.msg.html

(cl:defclass <msg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (is_rtr
    :reader is_rtr
    :initarg :is_rtr
    :type cl:boolean
    :initform cl:nil)
   (is_extended
    :reader is_extended
    :initarg :is_extended
    :type cl:boolean
    :initform cl:nil)
   (is_error
    :reader is_error
    :initarg :is_error
    :type cl:boolean
    :initform cl:nil)
   (dlc
    :reader dlc
    :initarg :dlc
    :type cl:fixnum
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 8 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass msg (<msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_socket-msg:<msg> is deprecated: use can_socket-msg:msg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_socket-msg:header-val is deprecated.  Use can_socket-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_socket-msg:id-val is deprecated.  Use can_socket-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'is_rtr-val :lambda-list '(m))
(cl:defmethod is_rtr-val ((m <msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_socket-msg:is_rtr-val is deprecated.  Use can_socket-msg:is_rtr instead.")
  (is_rtr m))

(cl:ensure-generic-function 'is_extended-val :lambda-list '(m))
(cl:defmethod is_extended-val ((m <msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_socket-msg:is_extended-val is deprecated.  Use can_socket-msg:is_extended instead.")
  (is_extended m))

(cl:ensure-generic-function 'is_error-val :lambda-list '(m))
(cl:defmethod is_error-val ((m <msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_socket-msg:is_error-val is deprecated.  Use can_socket-msg:is_error instead.")
  (is_error m))

(cl:ensure-generic-function 'dlc-val :lambda-list '(m))
(cl:defmethod dlc-val ((m <msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_socket-msg:dlc-val is deprecated.  Use can_socket-msg:dlc instead.")
  (dlc m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_socket-msg:data-val is deprecated.  Use can_socket-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <msg>) ostream)
  "Serializes a message object of type '<msg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_rtr) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_extended) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_error) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dlc)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <msg>) istream)
  "Deserializes a message object of type '<msg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'is_rtr) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_extended) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_error) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dlc)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i 8)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<msg>)))
  "Returns string type for a message object of type '<msg>"
  "can_socket/msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msg)))
  "Returns string type for a message object of type 'msg"
  "can_socket/msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<msg>)))
  "Returns md5sum for a message object of type '<msg>"
  "64ae5cebf967dc6aae4e78f5683a5b25")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'msg)))
  "Returns md5sum for a message object of type 'msg"
  "64ae5cebf967dc6aae4e78f5683a5b25")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<msg>)))
  "Returns full string definition for message of type '<msg>"
  (cl:format cl:nil "std_msgs/Header header~%uint32 id~%bool is_rtr~%bool is_extended~%bool is_error~%uint8 dlc~%uint8[8] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'msg)))
  "Returns full string definition for message of type 'msg"
  (cl:format cl:nil "std_msgs/Header header~%uint32 id~%bool is_rtr~%bool is_extended~%bool is_error~%uint8 dlc~%uint8[8] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <msg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     1
     1
     1
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <msg>))
  "Converts a ROS message object to a list"
  (cl:list 'msg
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':is_rtr (is_rtr msg))
    (cl:cons ':is_extended (is_extended msg))
    (cl:cons ':is_error (is_error msg))
    (cl:cons ':dlc (dlc msg))
    (cl:cons ':data (data msg))
))
