
(cl:in-package :asdf)

(defsystem "weather_station-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Weather" :depends-on ("_package_Weather"))
    (:file "_package_Weather" :depends-on ("_package"))
  ))