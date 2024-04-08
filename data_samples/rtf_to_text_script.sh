#!/bin/bash

# Define the path to the directories
transcriptions_dir="transcriptions"
output_dir="transcriptions_text"

# Create the output directory if it doesn't exist
# mkdir -p "$output_dir"

# Loop through all .rtf files in the transcriptions directory
for file in "$transcriptions_dir"/*.rtf; do
  # Extract the filename without the extension
  filename=$(basename -- "$file")
  filename_without_ext="${filename%.rtf}"

  # Convert the file using Pandoc and write it to the output directory
  pandoc -s "$file" -o "$output_dir/${filename_without_ext}.txt"
done
