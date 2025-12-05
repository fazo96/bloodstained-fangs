#!/usr/bin/env bash

# Halve the resolution of all WebP images in the art folder
# Uses ImageMagick's mogrify for in-place resizing

set -e

if ! command -v mogrify &> /dev/null; then
    echo "Error: ImageMagick (mogrify) is not installed."
    echo "Please ensure 'imagemagick' is in your shell.nix and environment is reloaded."
    exit 1
fi

echo "Halving resolution of WebP files in art/..."

count=0

# Check if there are any webp files
if compgen -G "art/*.webp" > /dev/null; then
    for file in art/*.webp; do
        echo "Processing $file..."
        mogrify -resize 50% "$file"
        count=$((count+1))
    done
    echo "Done! Resized $count images."
else
    echo "No WebP files found in art/."
fi
