#!/bin/bash

# This script calculates the sum of 5 numbers.

echo "Enter 5 numbers:"

# Read five numbers from the user
read -p "Enter number 1: " num1
read -p "Enter number 2: " num2
read -p "Enter number 3: " num3
read -p "Enter number 4: " num4
read -p "Enter number 5: " num5

# Calculate the sum
sum=$((num1 + num2 + num3 + num4 + num5))

# Output the sum
echo "The sum of the 5 numbers is: $sum"
