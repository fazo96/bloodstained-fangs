#!/bin/bash

# Exit on error
set -e

echo "Building Bloodstained Fangs PDF..."

# Compile the Typst document
typst compile --font-path ./fonts main.typ

# Ensure website directory exists (it should, but good practice)
mkdir -p website

# Copy the PDF to the website folder with the correct name
echo "Copying PDF to website folder..."
cp main.pdf "website/Bloodstained Fangs.pdf"

# Copy images to website folder
echo "Copying over images to website folder..."
cp art/cover_art.webp "website/cover.webp"
cp art/by-sa.png "website/by-sa.png"
cp art/stamp.png "website/stamp.png"
cp art/trippy_pizza.webp "website/trippy_pizza.webp"

# Copy font to website folder
echo "Copying font to website folder..."
cp fonts/TAKOTA-7LRL.OTF "website/TAKOTA-7LRL.OTF"

# Sync version number
echo "Syncing version number..."
VERSION=$(grep 'version:' main.typ | sed -n 's/.*version: "\(.*\)",/\1/p')
if [ -n "$VERSION" ]; then
    echo "Found version: $VERSION"
    sed -i "s|<p class=\"version\">Version .*</p>|<p class=\"version\">Version $VERSION</p>|" website/index.html
else
    echo "Warning: Could not extract version from main.typ"
fi

echo "Build complete! Website is ready in 'website/' directory."
