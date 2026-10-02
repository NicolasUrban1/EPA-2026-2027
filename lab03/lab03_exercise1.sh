#!/bin/bash

# this is a comment

# I used Sed -i 31,$d lab03 to delete everything after line 30 -used memory from security and bash scripting
#  classes last year with pearse

# for loop to count to 10
for c in {1..5}; do
	echo "Count: $c"

	# if does not use == it uses -eq
	# note the spaces around if [ ]
	if [ $c -eq 3 ]; then
		echo "found the third item"
	fi
done

# how do we pass parameters from the command line
# into this bash script. 
# we use the notation $1, $2 etc to represent
# the first, second etc parameter into this script
if [ -z $1 ]; then
	echo "You didn't pass any paraemters to $0"
else
	echo "You passed in $1 to $0"
fi

# heres a brand new command: 
# it calls ps -ef, then pipes it into word counter
# then stores the result in ct
ct=$(ps -ef | wc -l)
echo "There are $ct processes running on this machine"

#count number of processes running code:
#ps lists the processes
#wc counts the lines in that list

processes=$(ps -ef | wc -l)

if [ "$processes" -gt "$1" ]; #compare the number of processes with the number entered by user
	then # this message is shown when the limit is exceeded
		echo "Maximum number of processes exceeded"
	else # this message is shown when the limit is NOT excedded
		echo "The maximum number of processes not exceded"
fi
