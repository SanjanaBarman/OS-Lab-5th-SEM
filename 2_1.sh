#!/bin/bash

# Script to calculate the series 1 + (x/2)^2 - (x/2)^3 + (x/2)^4 - (x/2)^5 + ...

# Function to calculate power
power() {
    local base=$1
    local exp=$2
    local result=1

    for ((i=0; i<exp; i++)); do
    result=$(echo "$result * $base" | bc -l)
    done

    echo $result
}

# Read inputs
read -p "Enter the value of x: " x
read -p "Enter the number of terms (n): " n

# Initialize variables
result=1
sign=1
term=1

# Calculate the series
for ((i=2; i<=n; i++)); do
  sign=$((sign * -1)) # Alternate sign
    term=$(power "$x/2" "$i") # Calculate (x/2)^i
  term=$(echo "$term * $sign" | bc -l) # Apply the sign
    result=$(echo "$result + $term" | bc -l) # Add to result
done

# Print the result
echo "The value of the series is: $result"
