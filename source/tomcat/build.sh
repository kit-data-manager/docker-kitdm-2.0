#!/bin/bash

echo "Cloning remote repository."
cd /kitdm20/
#In order to clone a specific branch, e.g. a tagged release, you may add an additional argument --branch=<BRANCH_NAME>
git clone --recursive https://github.com/kit-data-manager/base-repo.git
cd base-repo

echo "Building submodules and project from source."
./gradlew -Prelease build

echo "Copying service and configuration files to release folder."
mkdir release
cp build/libs/base-repo.jar ./release
cp -R conf release/config

echo "Build done."
