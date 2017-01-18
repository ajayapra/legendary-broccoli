; Auto-generated. Do not edit!


(cl:in-package weather_station-msg)


;//! \htmlinclude Weather.msg.html

(cl:defclass <Weather> (roslisp-msg-protocol:ros-message)
  ((tempature
    :reader tempature
    :initarg :tempature
    :type cl:fixnum
    :initform 0)
   (humidity
    :reader humidity
    :initarg :humidity
    :type cl:fixnum
    :initform 0)
   (windspeed
    :reader windspeed
    :initarg :windspeed
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Weather (<Weather>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Weather>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Weather)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name weather_station-msg:<Weather> is deprecated: use weather_station-msg:Weather instead.")))

(cl:ensure-generic-function 'tempature-val :lambda-list '(m))
(cl:defmethod tempature-val ((m <Weather>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader weather_station-msg:tempature-val is deprecated.  Use weather_station-msg:tempature instead.")
  (tempature m))

(cl:ensure-generic-function 'humidity-val :lambda-list '(m))
(cl:defmethod humidity-val ((m <Weather>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader weather_station-msg:humidity-val is deprecated.  Use weather_station-msg:humidity instead.")
  (humidity m))

(cl:ensure-generic-function 'windspeed-val :lambda-list '(m))
(cl:defmethod windspeed-val ((m <Weather>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader weather_station-msg:windspeed-val is deprecated.  Use weather_station-msg:windspeed instead.")
  (windspeed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Weather>) ostream)
  "Serializes a message object of type '<Weather>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tempature)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tempature)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'humidity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'windspeed)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Weather>) istream)
  "Deserializes a message object of type '<Weather>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tempature)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tempature)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'humidity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'windspeed)) (cl:read-byte istream))
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
  "1112bfed6acb02d576c43b53e7817446")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Weather)))
  "Returns md5sum for a message object of type 'Weather"
  "1112bfed6acb02d576c43b53e7817446")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Weather>)))
  "Returns full string definition for message of type '<Weather>"
  (cl:format cl:nil "uint16 tempature~%uint8 humidity~%uint8 windspeed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Weather)))
  "Returns full string definition for message of type 'Weather"
  (cl:format cl:nil "uint16 tempature~%uint8 humidity~%uint8 windspeed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Weather>))
  (cl:+ 0
     2
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Weather>))
  "Converts a ROS message object to a list"
  (cl:list 'Weather
    (cl:cons ':tempature (tempature msg))
    (cl:cons ':humidity (humidity msg))
    (cl:cons ':windspeed (windspeed msg))
))
