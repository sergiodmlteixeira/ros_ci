#!/bin/bash

python -m coverage combine `find /root/target_ws -type f -name .coverage`
python -m coverage xml

# Setup & Upload Codacy Reporter
curl -Ls -o codacy-coverage-reporter "$(curl -Ls https://api.github.com/repos/codacy/codacy-coverage-reporter/releases/latest | jq -r '.assets | map({name, browser_download_url} | select(.name | contains("codacy-coverage-reporter-linux"))) | .[0].browser_download_url')"
chmod +x codacy-coverage-reporter
./codacy-coverage-reporter report --commit-uuid $TRAVIS_COMMIT -l Python -r coverage.xml
