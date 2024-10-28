# Output URL của website S3
output "website_url" {
  description = "The URL of the S3 bucket website."
  value       = aws_s3_bucket.mybucket.website_endpoint
}

