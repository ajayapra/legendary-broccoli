
(cl:in-package :asdf)

(defsystem "weather_station-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "local_weather" :depends-on ("_package_local_weather"))
    (:file "_package_local_weather" :depends-on ("_package"))
  ))