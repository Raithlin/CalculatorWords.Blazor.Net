#!/bin/bash

file_path="words.txt"

# Read the file content into the selected_text variable
selected_text=$(cat "$file_path")

echo "$selected_text" | awk '{print "{\"word\": \""$1"\", \"number\": "$2"}"}' | jq -s . > "words.json"