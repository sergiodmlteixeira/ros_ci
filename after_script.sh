#!/bin/bash

cd /root/target_ws/build/ros_ci/ros_ci_python/ 
python -m coverage xml 
wget -qO - https://coverage.codacy.com/get.sh | sh -s report -l Python -r coverage.xml

# find -type f -name .coverage -printf "%h\n" 