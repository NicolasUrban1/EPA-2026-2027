#!/bin/bash

# Count the running processes.
processes=$(ps -ef | wc -l)

# Compare the process count with the user's number.
if [ "$processes" -gt "$1" ]; then
    message="Maximum number of processes exceeded"
else
    message="The maximum number of processes NOT exceeded"
fi

# Show the message on the screen if the user enters screen.
if [ "$2" = "screen" ]; then
    echo "$message"
fi

# Save the message to a file if the user enters file.
if [ "$2" = "file" ]; then
    echo "$(date) - $message" >> process.log
fi
