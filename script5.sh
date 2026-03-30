#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Binit Varghese

# alias concept demonstrated via a comment:
# alias manifesto='./script5.sh'

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Writing to the file
echo "Open Source Manifesto - $DATE" > "$OUTPUT"
echo "--------------------------------" >> "$OUTPUT"
echo "As a developer, I rely heavily on $TOOL for my work." >> "$OUTPUT"
echo "To me, open source is ultimately about $FREEDOM." >> "$OUTPUT"
echo "In the future, I plan to build $BUILD and open source it." >> "$OUTPUT"

echo ""
echo "Manifesto saved to $OUTPUT"
echo "--------------------------"
cat "$OUTPUT"
