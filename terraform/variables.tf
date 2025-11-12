variable "bucket_names" {
  description = "A list of S3 bucket names to create."
  type        = list(string)
  default     = ["bak-doc-ivan-augustino", "bak-image-ivan-augustino", "bak-video-ivan-augustino"] # Replace with your desired unique bucket names
}