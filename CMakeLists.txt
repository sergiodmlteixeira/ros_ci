cmake_minimum_required(VERSION 2.8.3)
project(ros_ci)

find_package(catkin REQUIRED)

catkin_python_setup()

catkin_package(CATKIN_DEPENDS rospy)

install(PROGRAMS
  src/${PROJECT_NAME}/example_class.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

catkin_add_nosetests(test)
