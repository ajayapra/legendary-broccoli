// Generated by gencpp from file weather_station/Weather.msg
// DO NOT EDIT!


#ifndef WEATHER_STATION_MESSAGE_WEATHER_H
#define WEATHER_STATION_MESSAGE_WEATHER_H


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
struct Weather_
{
  typedef Weather_<ContainerAllocator> Type;

  Weather_()
    {
    }
  Weather_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }






  typedef boost::shared_ptr< ::weather_station::Weather_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::weather_station::Weather_<ContainerAllocator> const> ConstPtr;

}; // struct Weather_

typedef ::weather_station::Weather_<std::allocator<void> > Weather;

typedef boost::shared_ptr< ::weather_station::Weather > WeatherPtr;
typedef boost::shared_ptr< ::weather_station::Weather const> WeatherConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::weather_station::Weather_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::weather_station::Weather_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::weather_station::Weather_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::weather_station::Weather_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::weather_station::Weather_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::weather_station::Weather_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::weather_station::Weather_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::weather_station::Weather_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::weather_station::Weather_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::weather_station::Weather_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::weather_station::Weather_<ContainerAllocator> >
{
  static const char* value()
  {
    return "weather_station/Weather";
  }

  static const char* value(const ::weather_station::Weather_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::weather_station::Weather_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
";
  }

  static const char* value(const ::weather_station::Weather_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::weather_station::Weather_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Weather_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::weather_station::Weather_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::weather_station::Weather_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // WEATHER_STATION_MESSAGE_WEATHER_H
