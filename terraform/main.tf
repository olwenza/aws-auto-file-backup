    # main.tf

    provider "aws" {
      region = "us-east-1" # Specify your desired AWS region
    }

    # Create bucket for backing up documents for items defined in variabls.tf file
    resource "aws_s3_bucket" "bak_buckets" {
    for_each = toset(var.bucket_names)  #Loop through the bucket_names list
        bucket   = each.value   # assign bucket name to bucket
        tags = {
            Name        = each.value    # assign bucket name to tag name
            Environment = "Development"
        }
    }