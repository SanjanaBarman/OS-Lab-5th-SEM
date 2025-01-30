#!/bin/bash

filename=$1
greatest=
lowest=

# Read numbers from the file
while read -r number; do

    # Initialize greatest and lowest with the first number
    if [ -z "$greatest" ] || [ -z "$lowest" ]; then
        greatest=$number
        lowest=$number
    fi

    # Update greatest and lowest
    if [ "$number" -gt "$greatest" ]; then
        greatest=$number
    fi

    if [ "$number" -lt "$lowest" ]; then
        lowest=$number
    fi
done < "$filename"

# Display the results
echo "Greatest number: $greatest"
echo "Lowest number: $lowest"
