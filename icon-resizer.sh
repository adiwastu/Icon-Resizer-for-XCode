#!/bin/bash

# Check if input file is provided
if [ $# -eq 0 ]; then
    echo "Please provide an input PNG file"
    exit 1
fi

# Get input file name and extension
filename=$(basename -- "$1")
extension="${filename##*.}"

# Check if input file is a PNG file
if [ "$extension" != "png" ]; then
    echo "Input file must be a PNG file"
    exit 1
fi

# Get input file size
size=`sips -g pixelWidth -g pixelHeight "$1" | awk 'NR%2{printf $NF " ";next;}1'`

# Generate resized PNG files
sips -Z 16 "$1" --out "${filename%.*}_16x16.png"
sips -Z 32 "$1" --out "${filename%.*}_32x32.png"
sips -Z 64 "$1" --out "${filename%.*}_64x64.png"
sips -Z 128 "$1" --out "${filename%.*}_128x128.png"
sips -Z 256 "$1" --out "${filename%.*}_256x256.png"
sips -Z 512 "$1" --out "${filename%.*}_512x512.png"

echo "Resized PNG files generated:"
ls "${filename%.*}"_*.png
