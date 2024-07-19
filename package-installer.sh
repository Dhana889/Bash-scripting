#!/bin/bash

####################################
### Script to install packages using command line arguments ###
### Date: 19/Jul/2024 ###
### Version: 1 ###
####################################

if [[ $# -eq 0 ]]
then
	echo "Please provide package names to be installed as command line arguments"
	exit 1
fi

if [[ $(id -u) -ne 0 ]]
then
	echo "Please run the script as root user or using sudo privilege"
	exit 2
fi

for package in $@
do
	echo $package
	which $package
	if [[ $? -eq 0 ]] &> /dev/null
	then
		echo "$package utility already installed"
	else
		echo "Installing $package ..."
		apt install $package -y &> /dev/null
		if [[ $? -eq 0 ]]
		then
			echo "Successfully installed $package package"
		else
			echo "Unable to install $package package"
		fi
	fi
done

