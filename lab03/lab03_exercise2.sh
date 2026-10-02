#!/bin/bash

# Set the name of the output file.
log_file="process.log"

# Count the running processes.
processes=$(ps -ef | wc -l)

# Store the current date and time.
time=$(date)

# Check whether the process count is greater than the number entered.
if [ "$processes" -gt "$1" ]; then

    # Append the exceeded message to the output file.
    echo "$time - Maximum number of processes exceeded" >> "$log_file"

else

    # Append the other message to the output file.
    echo "$time - The maximum number of processes NOT exceeded" >> "$log_file"

fi
