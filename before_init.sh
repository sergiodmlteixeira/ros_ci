#!/bin/bash

apt-get install jq
curl -LSs "$(curl -LSs https://api.github.com/repos/codacy/codacy-coverage-reporter/releases/latest | jq -r '.assets | map({name, browser_download_url} | select(.name | endswith(".jar"))) | .[0].browser_download_url')" -o codacy-coverage-reporter-assembly.jar