#!/bin/bash

if [ $# -ne 3 ]; then
    echo "Usage: $0 file1 file2 output_file"
    exit 1
fi

file1="$1"
file2="$2"
output_file="$3"

# Verify that both input files exist
if [ ! -f "$file1" ] || [ ! -f "$file2" ]; then
    echo "Error: Both input files must exist."
    exit 1
fi

paste "$file1" "$file2" | while IFS=$'\t' read -r line1 line2; do
    common_prefix=0

    # Compare characters one by one to find common prefix length
    while [ $common_prefix -lt ${#line1} ] && [ $common_prefix -lt ${#line2} ] && [ "${line1:$common_prefix:1}" = "${line2:$common_prefix:1}" ]; do
        common_prefix=$((common_prefix + 1))
    done
    
    echo "$common_prefix"
done > "$output_file"

cat "$output_file"
exit 0