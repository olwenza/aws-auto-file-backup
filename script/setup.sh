#!/bin/bash
#Create S3 bucket

# Define your bucket name and region
BUCKET_NAME_LIST=( "bak-doc-ivan-augustino" "bak-image-ivan-augustino" "bak-video-ivan-augustino" )
REGION="us-east-1"

# Create the S3 bucket
for bucket_name in "${BUCKET_NAME_LIST[@]}"; do
    echo "Creating S3 bucket: $bucket_name in region: $REGION"
    aws s3 mb s3://$bucket_name --region $REGION
    echo "Bucket name: $bucket_name created!"
done