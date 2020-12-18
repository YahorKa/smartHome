
(cl:in-package :asdf)

(defsystem "can_socket-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "msg" :depends-on ("_package_msg"))
    (:file "_package_msg" :depends-on ("_package"))
  ))