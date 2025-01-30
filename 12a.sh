#!/bin/bash
# Loop through each year
for year in "$@"; do
    # Check if the year is divisible by 4
    if (( (year % 4 == 0 && year % 100 != 0) || year % 400 == 0 )); then
        # Further check if divisible by 100 but not 400
            echo "$year is a leap year."
    else
        echo "$year is not a leap year."
    fi
done
