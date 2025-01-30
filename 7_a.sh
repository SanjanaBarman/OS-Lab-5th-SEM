#!/bin/bash

# Check if at least one file is provided
if [ $# -eq 0 ]; then
    echo "pass files"
    exit 1
fi

# Initialize totals
total_chars=0
total_words=0
total_lines=0

# Process each file
for file in "$@"; do
    if [ -f "$file" ]; then
        echo "Processing file: $file"
        
        # Count characters, words, and lines for the current file
        chars=$(wc -m < "$file")
        words=$(wc -w < "$file")
        lines=$(wc -l < "$file")
        
        # Display results for the current file
        echo "Characters: $chars"
        echo "Words: $words"
        echo "Lines: $lines"
        
        # Add to totals
        total_chars=$((total_chars + chars))
        total_words=$((total_words + words))
        total_lines=$((total_lines + lines))
    else
        echo "Error: '$file' is not a valid file."
    fi
done

# Display total counts
echo "-----"
echo "Total Characters: $total_chars"
echo "Total Words: $total_words"
echo "Total Lines: $total_lines"
