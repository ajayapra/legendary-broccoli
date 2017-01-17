; Auto-generated. Do not edit!


(cl:in-package weather_station-srv)


;//! \htmlinclude local_weather-request.msg.html

(cl:defclass <local_weather-request> (roslisp-msg-protocol:ros-message)
  ((zip_code
    :reader zip_code
    :initarg :zip_code
    :type cl:string
    :initform ""))
)

(cl:defclass local_weather-request (<local_weather-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <local_weather-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'local_weather-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name weather_station-srv:<local_weather-request> is deprecated: use weather_station-srv:local_weather-request instead.")))

(cl:ensure-generic-function 'zip_code-val :lambda-list '(m))
(cl:defmethod zip_code-val ((m <local_weather-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader weather_station-srv:zip_code-val is deprecated.  Use weather_station-srv:zip_code instead.")
  (zip_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <local_weather-request>) ostream)
  "Serializes a message object of type '<local_weather-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'zip_code))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'zip_code))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <local_weather-request>) istream)
  "Deserializes a message object of type '<local_weather-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'zip_code) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'zip_code) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<local_weather-request>)))
  "Returns string type for a service object of type '<local_weather-request>"
  "weather_station/local_weatherRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'local_weather-request)))
  "Returns string type for a service object of type 'local_weather-request"
  "weather_station/local_weatherRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<local_weather-request>)))
  "Returns md5sum for a message object of type '<local_weather-request>"
  "175f12046f41ab94b7e23ad440a590f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'local_weather-request)))
  "Returns md5sum for a message object of type 'local_weather-request"
  "175f12046f41ab94b7e23ad440a590f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<local_weather-request>)))
  "Returns full string definition for message of type '<local_weather-request>"
  (cl:format cl:nil "string zip_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'local_weather-request)))
  "Returns full string definition for message of type 'local_weather-request"
  (cl:format cl:nil "string zip_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <local_weather-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'zip_code))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <local_weather-request>))
  "Converts a ROS message object to a list"
  (cl:list 'local_weather-request
    (cl:cons ':zip_code (zip_code msg))
))
;//! \htmlinclude local_weather-response.msg.html

(cl:defclass <local_weather-response> (roslisp-msg-protocol:ros-message)
  ((temperature
    :reader temperature
    :initarg :temperature
    :type cl:fixnum
    :initform 0))
)

(cl:defclass local_weather-response (<local_weather-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <local_weather-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'local_weather-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name weather_station-srv:<local_weather-response> is deprecated: use weather_station-srv:local_weather-response instead.")))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <local_weather-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader weather_station-srv:temperature-val is deprecated.  Use weather_station-srv:temperature instead.")
  (temperature m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <local_weather-response>) ostream)
  "Serializes a message object of type '<local_weather-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'temperature)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <local_weather-response>) istream)
  "Deserializes a message object of type '<local_weather-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'temperature)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<local_weather-response>)))
  "Returns string type for a service object of type '<local_weather-response>"
  "weather_station/local_weatherResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'local_weather-response)))
  "Returns string type for a service object of type 'local_weather-response"
  "weather_station/local_weatherResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<local_weather-response>)))
  "Returns md5sum for a message object of type '<local_weather-response>"
  "175f12046f41ab94b7e23ad440a590f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'local_weather-response)))
  "Returns md5sum for a message object of type 'local_weather-response"
  "175f12046f41ab94b7e23ad440a590f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<local_weather-response>)))
  "Returns full string definition for message of type '<local_weather-response>"
  (cl:format cl:nil "uint8 temperature~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'local_weather-response)))
  "Returns full string definition for message of type 'local_weather-response"
  (cl:format cl:nil "uint8 temperature~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <local_weather-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <local_weather-response>))
  "Converts a ROS message object to a list"
  (cl:list 'local_weather-response
    (cl:cons ':temperature (temperature msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'local_weather)))
  'local_weather-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'local_weather)))
  'local_weather-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'local_weather)))
  "Returns string type for a service object of type '<local_weather>"
  "weather_station/local_weather")