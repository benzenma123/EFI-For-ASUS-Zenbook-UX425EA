#!/bin/bash

# -------------------------------
# Config
# -------------------------------
REPO_URL="https://github.com/benzenma123/EFI-For-ASUS-Zenbook-UX425EA"  # Replace with your repo URL
BRANCH="main"                                      # Branch you want to download
DEST_DIR="https://github.com/benzenma123/EFI-For-ASUS-Zenbook-UX425EA/releases/download/v0.1.0-beta/EFI.zip"                   # Destination file path
DEST_FOLDER=$(dirname "$DEST_DIR")
mkdir -p "$DEST_FOLDER"
# -------------------------------
# Download the ZIP
# -------------------------------
echo "Downloading repository $REPO_URL (branch: $BRANCH)..."

# Construct the download URL for the ZIP
ZIP_URL="$REPO_URL/archive/refs/heads/$BRANCH.zip"

# Use curl to download
curl -L -o "$DEST_DIR" "$ZIP_URL"

# Check if download was successful
if [ $? -eq 0 ]; then
    echo "Download completed successfully! Saved as $DEST_DIR"
else
    echo "Download failed! Check your internet!"
fi
