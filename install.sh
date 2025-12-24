#!/bin/bash

# -------------------------------
# Config
# -------------------------------
REPO_URL="https://github.com/benzenma123/EFI-For-ASUS-Zenbook-UX425EA"  # Your repo URL
BRANCH="main"                                                            # Branch to download
DEST_FOLDER="./Result"                                                    # Folder to save ZIP
DEST_FILE="EFI.zip"                                                       # ZIP file name
DEST_PATH="$DEST_FOLDER/$DEST_FILE"                                       # Full path

# Create the folder if it doesn't exist
mkdir -p "$DEST_FOLDER"

# -------------------------------
# Download the ZIP
# -------------------------------
echo "Downloading repository $REPO_URL (branch: $BRANCH) into $DEST_FOLDER..."

# Construct the download URL for the ZIP
ZIP_URL="$REPO_URL/archive/refs/heads/$BRANCH.zip"

# Use curl to download
curl -L -o "$DEST_PATH" "$ZIP_URL"

# Check if download was successful
if [ $? -eq 0 ]; then
    echo "Download completed successfully! Saved as $DEST_PATH"
else
    echo "Download failed! Check your internet!"
fi
