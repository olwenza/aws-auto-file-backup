#!/bin/bash
# Apply the lifecycle policy to your bucket

# Get the directory of the current script
SCRIPT_DIR="$(dirname "$0")"

# Source a file named 'variables.sh' in the same directory
source "${SCRIPT_DIR}/variables.sh"

# Loop through buckets and assign lifecycle policy
for bucket_name in "${BUCKET_NAME_LIST[@]}"; do 
    aws s3api put-bucket-lifecycle-configuration \
        --bucket $bucket_name \
        --lifecycle-configuration file://json/lifecycle.json
done

