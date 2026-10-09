#!/bin/bash

#store the first cmd input in a variable 

required_cores="$1"

#count the cpu cores available on the VM
#AI used to explain nproc
num_cpu=$(nproc)

#check whether the VM has fewer cores than needed
#Ai used to explain syntax of bash inputted variables
if [ "$num_cpu" -lt "$required_cores" ]; then
    echo "ERROR: This VM has only $num_cpu CPU core(s)."
    echo "At least $required_cores CPU core(s) are required."
    exit 1
else
    echo "OK: This VM has $num_cpu CPU core(s)."
    echo "It meets the requirement of at least $required_cores CPU core(s)."
fi

#Ai used to fix issue of having MKDIR making a directory and not a .sh file when trying to save 
