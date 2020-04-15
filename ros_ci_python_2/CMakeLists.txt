cmake_minimum_required(VERSION 2.8.3)
project(ros_ci_python_2)

find_package(catkin REQUIRED)

catkin_python_setup()

###################################
## catkin specific configuration ##
###################################

catkin_package(
  CATKIN_DEPENDS rospy
)

#############
## Install ##
#############

install(PROGRAMS
  src/${PROJECT_NAME}/ros_ci_class_2.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

#############
## Testing ##
#############

if (CATKIN_ENABLE_TESTING)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} --coverage")
  catkin_add_nosetests(test)
endif()
