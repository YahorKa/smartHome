
(cl:in-package :asdf)

(defsystem "serial_port-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "serial_msg" :depends-on ("_package_serial_msg"))
    (:file "_package_serial_msg" :depends-on ("_package"))
  ))