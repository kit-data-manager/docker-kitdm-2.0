#!/bin/bash

echo "Cloning remote repository."
cd /admin-service/
#In order to clone a specific branch, e.g. a tagged release, you may add an additional argument --branch=<BRANCH_NAME>
git clone --recursive https://github.com/kit-data-manager/admin-service.git
cd admin-service

echo "Building project from source."
./gradlew -Prelease build

echo "Build done."
