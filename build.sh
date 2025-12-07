#!/bin/bash

# Exit on error
set -e

echo "Building Bloodstained Fangs PDFs..."

# Compile the Typst document
echo "- 1/3: English"
typst compile --format pdf --font-path ./fonts main.typ main.pdf
echo "- 2/3: Italian"
typst compile --format pdf --font-path ./fonts main_ita.typ main_ita.pdf
echo "- 3/3: English POD"
typst compile --format pdf --font-path ./fonts main_pod.typ main_pod.pdf

# Ensure website directory exists (it should, but good practice)
mkdir -p website

# Copy the PDF to the website folder with the correct name
echo "Copying PDFs to website folder..."
cp main.pdf "website/Bloodstained Fangs.pdf"
cp main_ita.pdf "website/Bloodstained Fangs ITA.pdf"

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
VERSION=$(grep 'version =' content.typ | sed -n 's/.*version = "\(.*\)"/\1/p')
if [ -n "$VERSION" ]; then
    echo "Found version: $VERSION"
    sed -i "s|<p class=\"version\">Version .*</p>|<p class=\"version\">Version $VERSION</p>|" website/index.html
else
    echo "Could not extract version from content.typ"
    exit 1
fi

echo "Build complete! Website is ready in 'website/' directory."
