#!/bin/bash

# Script 5: Open Source Manifesto Generator
# Author: Afrah Khan

echo "Answer the following questions:"
echo ""

read -p "1. Name one open-source tool you use: " TOOL
read -p "2. In one word, what does freedom mean to you? " FREEDOM
read -p "3. What would you build and share freely? " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "" > $OUTPUT
echo "Open Source Manifesto" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT

echo "I believe that tools like $TOOL represent the spirit of $FREEDOM." >> $OUTPUT
echo "Technology should not be locked away, but shared openly." >> $OUTPUT
echo "If given the chance, I would build $BUILD and share it with the world." >> $OUTPUT
echo "This is my contribution to the open-source community." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT
