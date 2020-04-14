#!/bin/bash

# cd to a directory with write permissions
cd /root/target_ws/

# Combine .coverage files & Combine result to xml
python -m coverage combine `find . -type f -name .coverage`
python -m coverage xml

# Generate Cpp coverage xml

GCDA="$(find /root/target_ws/ -type f -name *.gcda)"
echo "${GCDA}"

GCNO="$(find /root/target_ws/ -type f -name *.gcno)"
echo "${GCNO}"

OUTPUT="$(gcovr -v -r /root/target_ws/)"
echo "${OUTPUT}"

# gcovr -r /root/target_ws/ --xml-pretty > coverage_cpp.xml

# Setup & Upload Codacy Reporter
curl -Ls -o codacy-coverage-reporter "$(curl -Ls https://api.github.com/repos/codacy/codacy-coverage-reporter/releases/latest | jq -r '.assets | map({name, browser_download_url} | select(.name | contains("codacy-coverage-reporter-linux"))) | .[0].browser_download_url')"
chmod +x codacy-coverage-reporter

# Report Python coverage
# ./codacy-coverage-reporter report --commit-uuid $TRAVIS_COMMIT -l Python -r coverage.xml

# Report Cpp coverage
./codacy-coverage-reporter report --commit-uuid $TRAVIS_COMMIT --language Cpp --force-language -r coverage_cpp.xml