#!/bin/bash

# Directory containing the photos
input_directory="/Users/victorryabkov/Movies/Youtube/iphones_comparison/source/camera_test_images/iphone_15_pro_max"

# Device models to remove
model1="iPhone 13"  # Replace with actual model name
# model2="iPhone Model 2"  # Replace with actual model name
# model3="iPhone Model 3"  # Replace with actual model name

# Function to remove photos based on model
remove_photos() {
    model=$1
    find "$input_directory" -type f -exec sh -c '
        for photo; do
            if exiftool -Model -b "$photo" | grep -q "'"$model"'"; then
                echo "Removing $photo"
                rm "$photo"
            fi
        done
    ' find-sh {} +
}

# Remove photos for each model
remove_photos "$model1"
# remove_photos "$model2"
# remove_photos "$model3"

echo "Photos removed."
