#!/bin/bash

# Convert .coverage to xml file
for i in $(find /root/target_ws -type f -name .coverage); 
do
  cd $(dirname $(realpath $i)) && python -m coverage xml
done

# Setup Codacy Reporter
curl -Ls -o codacy-coverage-reporter "$(curl -Ls https://api.github.com/repos/codacy/codacy-coverage-reporter/releases/latest | jq -r '.assets | map({name, browser_download_url} | select(.name | contains("codacy-coverage-reporter-linux"))) | .[0].browser_download_url')"
chmod +x codacy-coverage-reporter

# Upload coverage xml to Codacy
for i in $(find /root/target_ws -type f -name coverage.xml); 
do
  ./codacy-coverage-reporter report --commit-uuid $TRAVIS_COMMIT -l Python -r $i 
done
