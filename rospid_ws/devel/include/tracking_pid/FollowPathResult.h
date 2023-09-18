// Generated by gencpp from file tracking_pid/FollowPathResult.msg
// DO NOT EDIT!


#ifndef TRACKING_PID_MESSAGE_FOLLOWPATHRESULT_H
#define TRACKING_PID_MESSAGE_FOLLOWPATHRESULT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace tracking_pid
{
template <class ContainerAllocator>
struct FollowPathResult_
{
  typedef FollowPathResult_<ContainerAllocator> Type;

  FollowPathResult_()
    {
    }
  FollowPathResult_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::tracking_pid::FollowPathResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tracking_pid::FollowPathResult_<ContainerAllocator> const> ConstPtr;

}; // struct FollowPathResult_

typedef ::tracking_pid::FollowPathResult_<std::allocator<void> > FollowPathResult;

typedef boost::shared_ptr< ::tracking_pid::FollowPathResult > FollowPathResultPtr;
typedef boost::shared_ptr< ::tracking_pid::FollowPathResult const> FollowPathResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tracking_pid::FollowPathResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tracking_pid::FollowPathResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace tracking_pid

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::tracking_pid::FollowPathResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tracking_pid::FollowPathResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tracking_pid::FollowPathResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tracking_pid::FollowPathResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tracking_pid::FollowPathResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tracking_pid::FollowPathResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tracking_pid::FollowPathResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::tracking_pid::FollowPathResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::tracking_pid::FollowPathResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tracking_pid/FollowPathResult";
  }

  static const char* value(const ::tracking_pid::FollowPathResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tracking_pid::FollowPathResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#result definition\n"
;
  }

  static const char* value(const ::tracking_pid::FollowPathResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tracking_pid::FollowPathResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FollowPathResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tracking_pid::FollowPathResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::tracking_pid::FollowPathResult_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // TRACKING_PID_MESSAGE_FOLLOWPATHRESULT_H