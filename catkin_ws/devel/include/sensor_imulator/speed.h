// Generated by gencpp from file sensor_imulator/speed.msg
// DO NOT EDIT!


#ifndef SENSOR_IMULATOR_MESSAGE_SPEED_H
#define SENSOR_IMULATOR_MESSAGE_SPEED_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace sensor_imulator
{
template <class ContainerAllocator>
struct speed_
{
  typedef speed_<ContainerAllocator> Type;

  speed_()
    : header()
    , data(0.0)
    , pos(0.0)  {
    }
  speed_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , data(0.0)
    , pos(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef float _data_type;
  _data_type data;

   typedef float _pos_type;
  _pos_type pos;





  typedef boost::shared_ptr< ::sensor_imulator::speed_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sensor_imulator::speed_<ContainerAllocator> const> ConstPtr;

}; // struct speed_

typedef ::sensor_imulator::speed_<std::allocator<void> > speed;

typedef boost::shared_ptr< ::sensor_imulator::speed > speedPtr;
typedef boost::shared_ptr< ::sensor_imulator::speed const> speedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sensor_imulator::speed_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sensor_imulator::speed_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::sensor_imulator::speed_<ContainerAllocator1> & lhs, const ::sensor_imulator::speed_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.data == rhs.data &&
    lhs.pos == rhs.pos;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::sensor_imulator::speed_<ContainerAllocator1> & lhs, const ::sensor_imulator::speed_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace sensor_imulator

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::sensor_imulator::speed_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sensor_imulator::speed_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sensor_imulator::speed_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sensor_imulator::speed_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sensor_imulator::speed_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sensor_imulator::speed_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sensor_imulator::speed_<ContainerAllocator> >
{
  static const char* value()
  {
    return "526298e06e706a491f1056b1beda5a42";
  }

  static const char* value(const ::sensor_imulator::speed_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x526298e06e706a49ULL;
  static const uint64_t static_value2 = 0x1f1056b1beda5a42ULL;
};

template<class ContainerAllocator>
struct DataType< ::sensor_imulator::speed_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sensor_imulator/speed";
  }

  static const char* value(const ::sensor_imulator::speed_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sensor_imulator::speed_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"float32 data\n"
"float32 pos\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::sensor_imulator::speed_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sensor_imulator::speed_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.data);
      stream.next(m.pos);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct speed_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sensor_imulator::speed_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::sensor_imulator::speed_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "data: ";
    Printer<float>::stream(s, indent + "  ", v.data);
    s << indent << "pos: ";
    Printer<float>::stream(s, indent + "  ", v.pos);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SENSOR_IMULATOR_MESSAGE_SPEED_H
