#!/bin/bash
##### 2- Script to identify important files and auto upload to S3 nightly at 2:00am ####################
#create tmp directories /tmp/aws/doc, /tmp/aws/image/ & /tmp/aws/video with files to test code 
# Get the directory of the current script
SCRIPT_DIR="$(dirname "$0")"

# Source a file named 'variables.sh' in the same directory
source "${SCRIPT_DIR}/variables.sh"

mkdir -p /tmp/aws/doc /tmp/aws/image /tmp/aws/video

# Loop through each folder
for folder_name in "${FOLDER_NAME_LIST[@]}"; do 
    src_dir="/tmp/aws/$folder_name"
    des_bucket="bak-$folder_name-ivan-augustino/" 
 
    # Check if the source directory exists
    if [ -d "$src_dir" ]; then
        aws s3 cp $src_dir s3://$des_bucket --recursive
    else
        echo "Directory $src_dir does not exist, skipping."
    fi
done
#####################################################################