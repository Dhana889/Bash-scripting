#!/bin/bash

#######################################
### Bash Script to Install GIT ###
### Version: V1 ###
### Date: 18/JUL/2024 ###
#######################################

set -x

echo "Running a script to install git"
echo "Installation Started"

if [ "$(uname)" == "Linux" ];
then
	echo "This is Linux box, installing git..."
	apt install git -y
elif [ "$(uname)" == "Darwin" ];
then
	echo "This is not Linux box"
	echo "This is MacOS"
	brew install git
else
	echo "GIT not installed"
fi
