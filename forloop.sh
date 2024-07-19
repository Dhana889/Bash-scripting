#!/bin/bash

#######################################
### Bash Script to delete directory using for loop ###
### Version: V1 ###
### Date: 19/JUL/2024 ###
#######################################

echo "Running a script to find and delete a directory named test"

path="$1"
echo "$path"

for folder in $(find $path -type d);
do
	echo "The directory name is $folder"
	if [ -d test ];
	then
		echo "This folder exists"
		echo "Removing the folder"
		rm -rf test
	else
		echo "Test folder does not exist"
	fi
done

