#!/bin/bash

####################################
### Script to monitor file size utilization ###
### Date: 18/Jul/2024 ###
### Version: 1 ###
####################################

echo "Running script to get first 10 biggest file in the file system passed via positional argument"
path="$1"
echo $path
du -ah $path | sort -hr | head -n 5 > /home/dhnlinux/filesize.txt
echo "This is the list of big files found in the file system"
cat /home/dhnlinux/filesize.txt

