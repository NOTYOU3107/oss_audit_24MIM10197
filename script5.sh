#!/bin/bash

# Script 5: Open Source Manifesto Generator

echo "Answer the following questions:"

read -p "1. Name one open-source tool you use: " TOOL
read -p "2. What does 'freedom' mean to you (one word): " FREEDOM
read -p "3. What would you build and share: " BUILD

DATE=$(date "+%d %B %Y")
OUTPUT="manifesto.txt"

echo "Creating your manifesto..."

echo "On $DATE, I believe in using $TOOL as a symbol of $FREEDOM. I would like to build $BUILD and share it freely with others." > $OUTPUT

echo "Manifesto saved in $OUTPUT"
cat $OUTPUT