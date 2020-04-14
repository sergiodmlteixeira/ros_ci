#ifndef ROS_CI_CPP_LIBRARY_ROS_CI_CPP_CLASS_H
#define ROS_CI_CPP_LIBRARY_ROS_CI_CPP_CLASS_H

#include <string>

namespace ros_ci_cpp_library
{

class RosCiCppClass
{
public:
    std::string getParameterValueFromName(const std::string &parameter_name) const;
};

}  // namespace ros_ci_cpp_library

#endif  // ROS_CI_CPP_LIBRARY_ROS_CI_CPP_CLASS_H
