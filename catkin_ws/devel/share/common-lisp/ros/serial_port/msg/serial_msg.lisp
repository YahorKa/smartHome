; Auto-generated. Do not edit!


(cl:in-package serial_port-msg)


;//! \htmlinclude serial_msg.msg.html

(cl:defclass <serial_msg> (roslisp-msg-protocol:ros-message)
  ((topic_id
    :reader topic_id
    :initarg :topic_id
    :type cl:fixnum
    :initform 0)
   (topic_name
    :reader topic_name
    :initarg :topic_name
    :type cl:string
    :initform "")
   (message_type
    :reader message_type
    :initarg :message_type
    :type cl:string
    :initform "")
   (md5sum
    :reader md5sum
    :initarg :md5sum
    :type cl:string
    :initform "")
   (buffer_size
    :reader buffer_size
    :initarg :buffer_size
    :type cl:integer
    :initform 0))
)

(cl:defclass serial_msg (<serial_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <serial_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'serial_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name serial_port-msg:<serial_msg> is deprecated: use serial_port-msg:serial_msg instead.")))

(cl:ensure-generic-function 'topic_id-val :lambda-list '(m))
(cl:defmethod topic_id-val ((m <serial_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:topic_id-val is deprecated.  Use serial_port-msg:topic_id instead.")
  (topic_id m))

(cl:ensure-generic-function 'topic_name-val :lambda-list '(m))
(cl:defmethod topic_name-val ((m <serial_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:topic_name-val is deprecated.  Use serial_port-msg:topic_name instead.")
  (topic_name m))

(cl:ensure-generic-function 'message_type-val :lambda-list '(m))
(cl:defmethod message_type-val ((m <serial_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:message_type-val is deprecated.  Use serial_port-msg:message_type instead.")
  (message_type m))

(cl:ensure-generic-function 'md5sum-val :lambda-list '(m))
(cl:defmethod md5sum-val ((m <serial_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:md5sum-val is deprecated.  Use serial_port-msg:md5sum instead.")
  (md5sum m))

(cl:ensure-generic-function 'buffer_size-val :lambda-list '(m))
(cl:defmethod buffer_size-val ((m <serial_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_port-msg:buffer_size-val is deprecated.  Use serial_port-msg:buffer_size instead.")
  (buffer_size m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<serial_msg>)))
    "Constants for message type '<serial_msg>"
  '((:ID_PUBLISHER . 0)
    (:ID_SUBSCRIBER . 1)
    (:ID_SERVICE_SERVER . 2)
    (:ID_SERVICE_CLIENT . 4)
    (:ID_PARAMETER_REQUEST . 6)
    (:ID_LOG . 7)
    (:ID_TIME . 10)
    (:ID_TX_STOP . 11))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'serial_msg)))
    "Constants for message type 'serial_msg"
  '((:ID_PUBLISHER . 0)
    (:ID_SUBSCRIBER . 1)
    (:ID_SERVICE_SERVER . 2)
    (:ID_SERVICE_CLIENT . 4)
    (:ID_PARAMETER_REQUEST . 6)
    (:ID_LOG . 7)
    (:ID_TIME . 10)
    (:ID_TX_STOP . 11))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <serial_msg>) ostream)
  "Serializes a message object of type '<serial_msg>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'topic_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'topic_id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'md5sum))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'md5sum))
  (cl:let* ((signed (cl:slot-value msg 'buffer_size)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <serial_msg>) istream)
  "Deserializes a message object of type '<serial_msg>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'topic_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'topic_id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'md5sum) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'md5sum) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'buffer_size) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<serial_msg>)))
  "Returns string type for a message object of type '<serial_msg>"
  "serial_port/serial_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'serial_msg)))
  "Returns string type for a message object of type 'serial_msg"
  "serial_port/serial_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<serial_msg>)))
  "Returns md5sum for a message object of type '<serial_msg>"
  "0ad51f88fc44892f8c10684077646005")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'serial_msg)))
  "Returns md5sum for a message object of type 'serial_msg"
  "0ad51f88fc44892f8c10684077646005")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<serial_msg>)))
  "Returns full string definition for message of type '<serial_msg>"
  (cl:format cl:nil "uint16 ID_PUBLISHER=0~%uint16 ID_SUBSCRIBER=1~%uint16 ID_SERVICE_SERVER=2~%uint16 ID_SERVICE_CLIENT=4~%uint16 ID_PARAMETER_REQUEST=6~%uint16 ID_LOG=7~%uint16 ID_TIME=10~%uint16 ID_TX_STOP=11~%uint16 topic_id~%string topic_name~%string message_type~%string md5sum~%int32 buffer_size~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'serial_msg)))
  "Returns full string definition for message of type 'serial_msg"
  (cl:format cl:nil "uint16 ID_PUBLISHER=0~%uint16 ID_SUBSCRIBER=1~%uint16 ID_SERVICE_SERVER=2~%uint16 ID_SERVICE_CLIENT=4~%uint16 ID_PARAMETER_REQUEST=6~%uint16 ID_LOG=7~%uint16 ID_TIME=10~%uint16 ID_TX_STOP=11~%uint16 topic_id~%string topic_name~%string message_type~%string md5sum~%int32 buffer_size~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <serial_msg>))
  (cl:+ 0
     2
     4 (cl:length (cl:slot-value msg 'topic_name))
     4 (cl:length (cl:slot-value msg 'message_type))
     4 (cl:length (cl:slot-value msg 'md5sum))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <serial_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'serial_msg
    (cl:cons ':topic_id (topic_id msg))
    (cl:cons ':topic_name (topic_name msg))
    (cl:cons ':message_type (message_type msg))
    (cl:cons ':md5sum (md5sum msg))
    (cl:cons ':buffer_size (buffer_size msg))
))
