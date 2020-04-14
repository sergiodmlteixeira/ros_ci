#!/bin/bash


# find -type f -name .coverage -printf "%h\n" 
for i in $(find /home/rarrais/catkin_ws -type f -name .coverage); 
do
    echo "$i"
done

cd /root/target_ws/build/ros_ci/ros_ci_python/
# Convert .coverage to xml file
python -m coverage xml 


# Setup Codacy Reporter
curl -Ls -o codacy-coverage-reporter "$(curl -Ls https://api.github.com/repos/codacy/codacy-coverage-reporter/releases/latest | jq -r '.assets | map({name, browser_download_url} | select(.name | contains("codacy-coverage-reporter-linux"))) | .[0].browser_download_url')"
chmod +x codacy-coverage-reporter

# Upload coverage xml to Codacy
./codacy-coverage-reporter report --commit-uuid $TRAVIS_COMMIT -l Python -r /root/target_ws/build/ros_ci/ros_ci_python/coverage.xml 

