# Output the S3 bucket website endpoint
output "websiteendpoint" {
  value = aws_s3_bucket.mybucket.website_endpoint
}