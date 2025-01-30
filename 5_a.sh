#!/bin/bash
filename="5_a.txt"
# Check if the file exists
if [ ! -f "$filename" ]; then
    echo "Error: File '$filename' does not exist."
    exit 1
fi

# Function to check if a word is a palindrome
is_palindrome() {
    word=$1
    length=${#word}
    reversed=""
    for ((i = length - 1; i >= 0; i--)); do
        reversed=$reversed${word:i:1}
    done

    if [ "$word" == "$reversed" ]; then
        return 0 # Is a palindrome
    else
        return 1 # Not a palindrome
    fi
}

# Process the file
echo "Palindrome words in the file:"
for word in $(tr -d '[:punct:]' < "$filename" | tr '[:upper:]' '[:lower:]'); do
    if is_palindrome "$word"; then
        echo "$word"
    fi
done
