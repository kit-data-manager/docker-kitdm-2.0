#!/bin/bash

echo "Cloning remote repository."
cd /collection-api/
#In order to clone a specific branch, e.g. a tagged release, you may add an additional argument --branch=<BRANCH_NAME>
git clone --recursive https://github.com/kit-data-manager/collection-api.git
cd collection-api

echo "Building project from source."
./gradlew -Pclean-release build

echo "Build done."
