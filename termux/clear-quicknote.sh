#!/bin/bash

# Define the source and target paths
SOURCE="$HOME/storage/shared/Documents/notebook/QuickNote.md"
TARGET="$HOME/storage/shared/Notebook/Vault/"

# Get current date and time in the format 27Nov23-timestamp
DATE_TIME=$(date +"%d%b%y-%H%M%S")

# New filename with date and time appended
NEW_FILENAME="${DATE_TIME}-QuickNote.md"

# Check if the source file exists
if [ -f "$SOURCE" ]; then
    # Move and rename the file
    mv "$SOURCE" "${TARGET}${NEW_FILENAME}"
    echo "QuickNote.md moved and renamed to ${NEW_FILENAME} successfully."
else
    echo "QuickNote.md not found."
fi