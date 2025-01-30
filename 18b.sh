#!/bin/bash

echo "Enter a number:"
read number

# Calculate the remainder when divided by 2
remainder=$((number % 2))

# Use a case statement to determine even or odd
case $remainder in
    0)
        echo "$number is an EVEN number."
        ;;
    1 | -1)
        echo "$number is an ODD number."
        ;;
    *)
        echo "Something went wrong."
        ;;
esac
