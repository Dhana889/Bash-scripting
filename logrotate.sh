#!/bin/bash

#######################################
### Bash Script to Install GIT ###
### Version: V1 ###
### Date: 18/JUL/2024 ###
#######################################

echo "This script delete files which are older than 30 days"
path="$1"
echo $path
find $path -mtime +30 -delete
if [ $? -eq 0 ];
then
	echo "Files that are older than 30 days are deleted"
else
	echo "Deletion files having some issue"
fi
