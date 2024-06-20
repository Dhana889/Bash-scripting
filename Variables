A variable is a temporary store for a piece of information. There are two actions we may perform for variables:

- Setting a value for a variable.
- Reading the value for a variable.

> myname=”Demo_Name”
> echo $myname = Prints the value Demo_Name

> now=$(date)
> echo $now = Runs the bash command date

env = To see the list of environment variables

Create a script using Variables:

#!/bin/bash
org="XYZ company Limited"
echo "Your organization name is $org"

count=${#org}
echo "Number of letters in the variable org = $count"

Script to assign values to Variables from user:

#!/bin/bash
#
read -p "Please enter you name : " name
read -p "Enter your city : " city
read -sp "Enter your Password : " Password    // the -sp argument used to not display the input given by user

echo "Hi $name, you are from $city"
