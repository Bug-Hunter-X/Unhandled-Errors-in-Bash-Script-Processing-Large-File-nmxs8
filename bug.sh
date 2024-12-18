#!/bin/bash

# This script attempts to process a large file, but it doesn't handle potential errors.

input_file="large_file.txt"

while IFS= read -r line; do
  # Process each line
  processed_line=$(some_command "$line")
  echo "$processed_line" >> output.txt
done < "$input_file"

# This script can fail if the input file is larger than available memory, resulting in an out of memory error.
# It can also fail if "some_command" fails for any reason.