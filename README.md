# ROS_CI Package

[![Build Status](https://travis-ci.com/rarrais/ros_ci.svg?branch=master)](https://travis-ci.com/rarrais/ros_ci) [![Codacy Badge](https://api.codacy.com/project/badge/Grade/4fadff45a3fd4669ab9d423c1b4c3fc5)](https://app.codacy.com/manual/rarrais/ros_ci?utm_source=github.com&utm_medium=referral&utm_content=rarrais/ros_ci&utm_campaign=Badge_Grade_Dashboard) 

A simple _ROS_ package for continuous integration (_CI_) tests. Developed in Python.

## For Python:

* To compile and run tests+coverage, run:

```bash
CATKIN_TEST_COVERAGE=1 catkin_make run_tests -DCMAKE_CXX_FLAGS=--coverage
```

* To find coverage files, run:

```bash
find -type f -name .coverage -printf "%h\n"
```

## For C++:

```bash
CATKIN_TEST_COVERAGE=1 catkin_make run_tests -DCMAKE_CXX_FLAGS="--coverage -fprofile-arcs -ftest-coverage"
```

```bash
gcovr -r /home/rarrais/catkin_ws --xml-pretty > coverage.xml
```

## For Local use:

```bash
rosrun industrial_ci rerun_ci . ROS_DISTRO=melodic AFTER_SCRIPT='./codacy.sh' BUILDER=catkin_make ADDITIONAL_DEBS="python-coverage curl jq gcovr" DOCKER_RUN_OPTS='-e CATKIN_TEST_COVERAGE=1 -e TRAVIS_COMMIT -e CODACY_PROJECT_TOKEN'
```

```bash
docker run -it industrial-ci/rerun_ci/ros_ci:83d94804ec7c /bin/bash
```

```bash
docker rmi industrial-ci/rerun_ci/ros_ci:83d94804ec7c -f
```