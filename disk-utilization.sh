#!/bin/bash

####################################
### Script to monitor disk utilization ###
### Date: 18/Jul/2024 ###
### Version: 1 ###
####################################

echo "Checking disk usage for /drivers in Linux system"
disk_size=`df -h | grep /drivers | awk '{print $5}' | cut -d '%' -f1`

echo "$disk_size% of disk is utilized"

if [ $disk_size -gt 80 ];
then
	echo "Disk is utilized more than 80% and expand disk or delete files soon"
else
	echo "Enough disk space is available"
fi

