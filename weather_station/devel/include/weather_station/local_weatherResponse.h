// Generated by gencpp from file weather_station/local_weatherResponse.msg
// DO NOT EDIT!


#ifndef WEATHER_STATION_MESSAGE_LOCAL_WEATHERRESPONSE_H
#define WEATHER_STATION_MESSAGE_LOCAL_WEATHERRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace weather_station
{
template <class ContainerAllocator>
struct local_weatherResponse_
{
  typedef local_weatherResponse_<ContainerAllocator> Type;

  local_weatherResponse_()
    : temperature(0)  {
    }
  local_weatherResponse_(const ContainerAllocator& _alloc)
    : temperature(0)  {
  (void)_alloc;
    }



   typedef uint8_t _temperature_type;
  _temperature_type temperature;




  typedef boost::shared_ptr< ::weather_station::local_weatherResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::weather_station::local_weatherResponse_<ContainerAllocator> const> ConstPtr;

}; // struct local_weatherResponse_

typedef ::weather_station::local_weatherResponse_<std::allocator<void> > local_weatherResponse;

typedef boost::shared_ptr< ::weather_station::local_weatherResponse > local_weatherResponsePtr;
typedef boost::shared_ptr< ::weather_station::local_weatherResponse const> local_weatherResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::weather_station::local_weatherResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::weather_station::local_weatherResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace weather_station

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'weather_station': ['/home/ian/Robotics/legendary-broccoli/weather_station/src/weather_station/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::weather_station::local_weatherResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::weather_station::local_weatherResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::weather_station::local_weatherResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::weather_station::local_weatherResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::weather_station::local_weatherResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::weather_station::local_weatherResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::weather_station::local_weatherResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d65d9838b200009b4380b5fe5dbeef52";
  }

  static const char* value(const ::weather_station::local_weatherResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd65d9838b200009bULL;
  static const uint64_t static_value2 = 0x4380b5fe5dbeef52ULL;
};

template<class ContainerAllocator>
struct DataType< ::weather_station::local_weatherResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "weather_station/local_weatherResponse";
  }

  static const char* value(const ::weather_station::local_weatherResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::weather_station::local_weatherResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 temperature\n\
\n\
";
  }

  static const char* value(const ::weather_station::local_weatherResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::weather_station::local_weatherResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.temperature);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct local_weatherResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::weather_station::local_weatherResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::weather_station::local_weatherResponse_<ContainerAllocator>& v)
  {
    s << indent << "temperature: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.temperature);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WEATHER_STATION_MESSAGE_LOCAL_WEATHERRESPONSE_H
