#include "ros_ci_cpp_library/ros_ci_cpp_class.h"

#include <string>

namespace ros_ci_cpp_library
{

std::string RosCiCppClass::getParameterValueFromName(const std::string &parameter_name) const
{
    std::string result = parameter_name;
    result.append("_test");
    return result;
}

}  // namespace ros_ci_cpp_library
