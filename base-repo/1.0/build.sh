#!/bin/bash

echo "Cloning remote repository."
cd /base-repo/
#In order to clone a specific branch, e.g. a tagged release, you may add an additional argument --branch=<BRANCH_NAME>
git clone --branch 1.0 --recursive https://github.com/kit-data-manager/base-repo.git
cd base-repo

echo "Building project from source."
./gradlew -Prelease build

echo "Build done."
