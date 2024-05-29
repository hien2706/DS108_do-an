#!/bin/bash
DEST_DIR="/mnt/c/Users/FPT/Desktop/dataset_ds108/images"
SOURCE_DIRS=(
    "/mnt/c/Users/FPT/Desktop/ISIC_images/akiec"
    "/mnt/c/Users/FPT/Desktop/ISIC_images/bcc"
    "/mnt/c/Users/FPT/Desktop/ISIC_images/bkl"
    "/mnt/c/Users/FPT/Desktop/ISIC_images/df"
    "/mnt/c/Users/FPT/Desktop/ISIC_images/mel"
    "/mnt/c/Users/FPT/Desktop/ISIC_images/nv"
    "/mnt/c/Users/FPT/Desktop/ISIC_images/vasc"
    "/mnt/c/Users/FPT/Desktop/dermnet_images"
)

for DIR in "${SOURCE_DIRS[@]}"; do
    # Find and move .jpeg and .jpg files
    find "$DIR" -type f \( -iname "*.jpeg" -o -iname "*.jpg" \) -exec mv {} "$DEST_DIR" \;
done

echo "Moving images done."
