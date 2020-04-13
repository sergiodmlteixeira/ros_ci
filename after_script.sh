#!/bin/bash

python -m coverage xml /root/target_ws/build/ros_ci/ros_ci_python/.coverage

curl -Ls -o codacy-coverage-reporter "$(curl -Ls https://api.github.com/repos/codacy/codacy-coverage-reporter/releases/latest | jq -r '.assets | map({name, browser_download_url} | select(.name | contains("codacy-coverage-reporter-linux"))) | .[0].browser_download_url')"
chmod +x codacy-coverage-reporter
./codacy-coverage-reporter report -l Python -r /root/target_ws/build/ros_ci/ros_ci_python/coverage.xml

# find -type f -name .coverage -printf "%h\n" 