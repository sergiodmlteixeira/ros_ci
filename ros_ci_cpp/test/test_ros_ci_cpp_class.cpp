#include <gtest/gtest.h>
#include <string>

#include "ros_ci_cpp_library/ros_ci_cpp_class.h"

using ros_ci_cpp_library::RosCiCppClass;

TEST(RosCiCppClassTestSuite, checkGetParameterValueFromName)
{
    RosCiCppClass sample_object;

    std::string param1("my_cpp_param_one");
    std::string param2("my_cpp_param_two");

    std::string expected_result1("my_cpp_param_one_test");
    std::string expected_result2("my_cpp_param_two_test");

    ASSERT_EQ(expected_result1, sample_object.getParameterValueFromName(param1));
    ASSERT_EQ(expected_result2, sample_object.getParameterValueFromName(param2));
}

int main(int argc, char **argv)
{
  testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}
