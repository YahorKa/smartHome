
(cl:in-package :asdf)

(defsystem "sensor_imulator-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "can" :depends-on ("_package_can"))
    (:file "_package_can" :depends-on ("_package"))
    (:file "pos" :depends-on ("_package_pos"))
    (:file "_package_pos" :depends-on ("_package"))
    (:file "speed" :depends-on ("_package_speed"))
    (:file "_package_speed" :depends-on ("_package"))
  ))