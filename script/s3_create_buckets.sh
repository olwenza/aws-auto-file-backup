
#!/bin/bash
############## 1- Create S3 bucket #####################################
# Get the directory of the current script
SCRIPT_DIR="$(dirname "$0")"

# Source a file named 'variables.sh' in the same directory
source "${SCRIPT_DIR}/variables.sh"

REGION="us-east-1"

# Create the S3 bucket
for bucket_name in "${BUCKET_NAME_LIST[@]}"; do
    echo "Creating S3 bucket: $bucket_name in region: $REGION"
    aws s3 mb s3://$bucket_name --region $REGION
    echo "Bucket name: $bucket_name created!"
done
#####################################################################
