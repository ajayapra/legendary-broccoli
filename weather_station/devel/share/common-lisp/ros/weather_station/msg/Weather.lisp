; Auto-generated. Do not edit!


(cl:in-package weather_station-msg)


;//! \htmlinclude Weather.msg.html

(cl:defclass <Weather> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Weather (<Weather>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Weather>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Weather)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name weather_station-msg:<Weather> is deprecated: use weather_station-msg:Weather instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Weather>) ostream)
  "Serializes a message object of type '<Weather>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Weather>) istream)
  "Deserializes a message object of type '<Weather>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Weather>)))
  "Returns string type for a message object of type '<Weather>"
  "weather_station/Weather")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Weather)))
  "Returns string type for a message object of type 'Weather"
  "weather_station/Weather")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Weather>)))
  "Returns md5sum for a message object of type '<Weather>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Weather)))
  "Returns md5sum for a message object of type 'Weather"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Weather>)))
  "Returns full string definition for message of type '<Weather>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Weather)))
  "Returns full string definition for message of type 'Weather"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Weather>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Weather>))
  "Converts a ROS message object to a list"
  (cl:list 'Weather
))
