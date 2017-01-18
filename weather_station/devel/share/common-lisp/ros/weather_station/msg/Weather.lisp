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
    :initform 0)
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:real
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

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <Weather>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader weather_station-msg:timestamp-val is deprecated.  Use weather_station-msg:timestamp instead.")
  (timestamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Weather>) ostream)
  "Serializes a message object of type '<Weather>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tempature)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tempature)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'humidity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'windspeed)) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'timestamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'timestamp) (cl:floor (cl:slot-value msg 'timestamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Weather>) istream)
  "Deserializes a message object of type '<Weather>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tempature)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tempature)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'humidity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'windspeed)) (cl:read-byte istream))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timestamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
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
  "404dfc49b0bcf6acc814bdb5efbe5cdd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Weather)))
  "Returns md5sum for a message object of type 'Weather"
  "404dfc49b0bcf6acc814bdb5efbe5cdd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Weather>)))
  "Returns full string definition for message of type '<Weather>"
  (cl:format cl:nil "uint16 tempature~%uint8 humidity~%uint8 windspeed~%time timestamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Weather)))
  "Returns full string definition for message of type 'Weather"
  (cl:format cl:nil "uint16 tempature~%uint8 humidity~%uint8 windspeed~%time timestamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Weather>))
  (cl:+ 0
     2
     1
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Weather>))
  "Converts a ROS message object to a list"
  (cl:list 'Weather
    (cl:cons ':tempature (tempature msg))
    (cl:cons ':humidity (humidity msg))
    (cl:cons ':windspeed (windspeed msg))
    (cl:cons ':timestamp (timestamp msg))
))
