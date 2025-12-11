#!/usr/bin/env bash

# Exit on error
set -e

echo "Building Bloodstained Fangs PDFs..."

# Compile the Typst document
echo "- 1/6: English"
typst compile --format pdf --font-path ./fonts main.typ "Bloodstained Fangs.pdf"
echo "- 2/6: Italian"
typst compile --format pdf --font-path ./fonts main_ita.typ "Bloodstained Fangs ITA.pdf"
echo "- 3/6: English POD"
typst compile --format pdf --font-path ./fonts main_pod.typ "Bloodstained Fangs POD.pdf"
echo "- 4/6: Italian POD"
typst compile --format pdf --font-path ./fonts main_pod_ita.typ "Bloodstained Fangs POD ITA.pdf"
echo "- 5/6: English Cover"
typst compile --format pdf --font-path ./fonts cover_eng.typ "Bloodstained Fangs POD Cover.pdf"
echo "- 6/6: Italian Cover"
typst compile --format pdf --font-path ./fonts cover_ita.typ "Bloodstained Fangs POD Cover ITA.pdf"

echo "Building itch.io banner..."
typst compile --format png --ppi 144 --font-path ./fonts banner.typ banner.png

echo "Building itch.io cover..."
typst compile --format png --ppi 144 --font-path ./fonts cover_itch.typ cover_itch.png

# Ensure website directory exists (it should, but good practice)
mkdir -p website

# Copy images to website folder
echo "Copying over images to website folder..."
cp art/cover_art.webp "website/cover.webp"
cp art/by-sa.png "website/by-sa.png"
cp art/stamp.png "website/stamp.png"
cp art/trippy_pizza.webp "website/trippy_pizza.webp"

# Copy font to website folder
echo "Copying font to website folder..."
cp fonts/TAKOTA-7LRL.OTF "website/TAKOTA-7LRL.OTF"

echo "Build complete! Website is ready in 'website/' directory."
