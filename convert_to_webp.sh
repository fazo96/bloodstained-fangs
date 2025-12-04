#!/usr/bin/env bash

# Convert PNG files in art folder to WebP format
# Excludes by-sa.png and stamp.png

set -e

echo "Converting PNG files to WebP format..."
echo ""

converted=0
skipped=0

for file in art/*.png; do
    basename="$(basename "$file" .png)"
    
    # Skip by-sa.png and stamp.png
    if [ "$basename" = "by-sa" ] || [ "$basename" = "stamp" ]; then
        echo "Skipping: $file"
        skipped=$((skipped+1))
        continue
    fi
    
    output="art/${basename}.webp"
    echo "Converting: $file -> $output"
    cwebp -q 90 "$file" -o "$output"
    converted=$((converted+1))
done

echo ""
echo "Conversion complete!"
echo "Converted: $converted files"
echo "Skipped: $skipped files"
