#!/bin/bash

####################################
### Script to check Docker service is running or not ###
### Date: 19/Jul/2024 ###
### Version: 1 ###
####################################

echo "===Checking Docker Service Status==="
status="`systemctl status docker | awk 'NR==3 {print}' | cut -d ':' -f2 | cut -d '(' -f1`"
echo $status
if [ $status = "active" ];
then
	echo "Docker service is running"
else
	echo "Docker service is not running"
fi

