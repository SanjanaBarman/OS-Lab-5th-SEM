#!/bin/bash

# Check if a directory is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

# Directory name
directory=$1

# Check if the argument is a valid directory
if [ ! -d "$directory" ]; then
    echo "Error: '$directory' is not a valid directory."
    exit 1
fi

# Output file to store the results
output_file="file_list_output.txt"

# Get the list of files and their count
file_list=$(ls -p "$directory" | grep -v /) # List only files (ignore directories)
file_count=$(echo "$file_list" | wc -l)    # Count the files

# Write to the output file
echo "Number of files: $file_count" > "$output_file"
echo "Files:" >> "$output_file"
echo "$file_list" >> "$output_file"

# Display the output
cat "$output_file"
