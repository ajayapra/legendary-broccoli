/* Auto-generated by genmsg_cpp for file /home/ian/Robotics/legendary-broccoli/irwakely/workspace/sandbox/beginner_tutorials/srv/AddTwoInts.srv */
#ifndef BEGINNER_TUTORIALS_SERVICE_ADDTWOINTS_H
#define BEGINNER_TUTORIALS_SERVICE_ADDTWOINTS_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"

#include "ros/service_traits.h"




namespace beginner_tutorials
{
template <class ContainerAllocator>
struct AddTwoIntsRequest_ {
  typedef AddTwoIntsRequest_<ContainerAllocator> Type;

  AddTwoIntsRequest_()
  : a(0)
  , b(0)
  {
  }

  AddTwoIntsRequest_(const ContainerAllocator& _alloc)
  : a(0)
  , b(0)
  {
  }

  typedef int64_t _a_type;
  int64_t a;

  typedef int64_t _b_type;
  int64_t b;


  typedef boost::shared_ptr< ::beginner_tutorials::AddTwoIntsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::beginner_tutorials::AddTwoIntsRequest_<ContainerAllocator>  const> ConstPtr;
}; // struct AddTwoIntsRequest
typedef  ::beginner_tutorials::AddTwoIntsRequest_<std::allocator<void> > AddTwoIntsRequest;

typedef boost::shared_ptr< ::beginner_tutorials::AddTwoIntsRequest> AddTwoIntsRequestPtr;
typedef boost::shared_ptr< ::beginner_tutorials::AddTwoIntsRequest const> AddTwoIntsRequestConstPtr;



template <class ContainerAllocator>
struct AddTwoIntsResponse_ {
  typedef AddTwoIntsResponse_<ContainerAllocator> Type;

  AddTwoIntsResponse_()
  : sum(0)
  {
  }

  AddTwoIntsResponse_(const ContainerAllocator& _alloc)
  : sum(0)
  {
  }

  typedef int64_t _sum_type;
  int64_t sum;


  typedef boost::shared_ptr< ::beginner_tutorials::AddTwoIntsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::beginner_tutorials::AddTwoIntsResponse_<ContainerAllocator>  const> ConstPtr;
}; // struct AddTwoIntsResponse
typedef  ::beginner_tutorials::AddTwoIntsResponse_<std::allocator<void> > AddTwoIntsResponse;

typedef boost::shared_ptr< ::beginner_tutorials::AddTwoIntsResponse> AddTwoIntsResponsePtr;
typedef boost::shared_ptr< ::beginner_tutorials::AddTwoIntsResponse const> AddTwoIntsResponseConstPtr;


struct AddTwoInts
{

typedef AddTwoIntsRequest Request;
typedef AddTwoIntsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;
}; // struct AddTwoInts
} // namespace beginner_tutorials

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::beginner_tutorials::AddTwoIntsRequest_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::beginner_tutorials::AddTwoIntsRequest_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::beginner_tutorials::AddTwoIntsRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "36d09b846be0b371c5f190354dd3153e";
  }

  static const char* value(const  ::beginner_tutorials::AddTwoIntsRequest_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x36d09b846be0b371ULL;
  static const uint64_t static_value2 = 0xc5f190354dd3153eULL;
};

template<class ContainerAllocator>
struct DataType< ::beginner_tutorials::AddTwoIntsRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "beginner_tutorials/AddTwoIntsRequest";
  }

  static const char* value(const  ::beginner_tutorials::AddTwoIntsRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::beginner_tutorials::AddTwoIntsRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "int64 a\n\
int64 b\n\
\n\
";
  }

  static const char* value(const  ::beginner_tutorials::AddTwoIntsRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::beginner_tutorials::AddTwoIntsRequest_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros


namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::beginner_tutorials::AddTwoIntsResponse_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::beginner_tutorials::AddTwoIntsResponse_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::beginner_tutorials::AddTwoIntsResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "b88405221c77b1878a3cbbfff53428d7";
  }

  static const char* value(const  ::beginner_tutorials::AddTwoIntsResponse_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xb88405221c77b187ULL;
  static const uint64_t static_value2 = 0x8a3cbbfff53428d7ULL;
};

template<class ContainerAllocator>
struct DataType< ::beginner_tutorials::AddTwoIntsResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "beginner_tutorials/AddTwoIntsResponse";
  }

  static const char* value(const  ::beginner_tutorials::AddTwoIntsResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::beginner_tutorials::AddTwoIntsResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "int64 sum\n\
\n\
\n\
";
  }

  static const char* value(const  ::beginner_tutorials::AddTwoIntsResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::beginner_tutorials::AddTwoIntsResponse_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::beginner_tutorials::AddTwoIntsRequest_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.a);
    stream.next(m.b);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct AddTwoIntsRequest_
} // namespace serialization
} // namespace ros


namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::beginner_tutorials::AddTwoIntsResponse_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.sum);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct AddTwoIntsResponse_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace service_traits
{
template<>
struct MD5Sum<beginner_tutorials::AddTwoInts> {
  static const char* value() 
  {
    return "6a2e34150c00229791cc89ff309fff21";
  }

  static const char* value(const beginner_tutorials::AddTwoInts&) { return value(); } 
};

template<>
struct DataType<beginner_tutorials::AddTwoInts> {
  static const char* value() 
  {
    return "beginner_tutorials/AddTwoInts";
  }

  static const char* value(const beginner_tutorials::AddTwoInts&) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<beginner_tutorials::AddTwoIntsRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "6a2e34150c00229791cc89ff309fff21";
  }

  static const char* value(const beginner_tutorials::AddTwoIntsRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<beginner_tutorials::AddTwoIntsRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "beginner_tutorials/AddTwoInts";
  }

  static const char* value(const beginner_tutorials::AddTwoIntsRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<beginner_tutorials::AddTwoIntsResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "6a2e34150c00229791cc89ff309fff21";
  }

  static const char* value(const beginner_tutorials::AddTwoIntsResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<beginner_tutorials::AddTwoIntsResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "beginner_tutorials/AddTwoInts";
  }

  static const char* value(const beginner_tutorials::AddTwoIntsResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace service_traits
} // namespace ros

#endif // BEGINNER_TUTORIALS_SERVICE_ADDTWOINTS_H

