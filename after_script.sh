#!/bin/bash

curl -LSs "$(curl -LSs https://api.github.com/repos/codacy/codacy-coverage-reporter/releases/latest | jq -r '.assets | map({name, browser_download_url} | select(.name | endswith(".jar"))) | .[0].browser_download_url')" -o codacy-coverage-reporter-assembly.jar
cat /root/target_ws/build/test_results/ros_ci_python/nosetests-test.xml
# - java -jar codacy-coverage-reporter-assembly.jar report -l Java -r build/reports/jacoco/test/jacocoTestReport.xml