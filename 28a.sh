#!/bin/bash

# Count the number of files in the current directory
file_count=$(ls -l | grep -v ^d | wc -l)

# Display the number of files
echo "Number of files in the current directory: $file_count"

# Find the largest file in the current directory
largest_file=$(ls -S | grep -v / | head -n 1)

# Display the name of the largest file
if [  "$largest_file" ]; then
    echo "The largest file is: $largest_file"
else
    echo "No files found in the directory."
fi
