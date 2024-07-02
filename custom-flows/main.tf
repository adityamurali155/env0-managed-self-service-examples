resource "aws_s3_bucket" "cf_bucket" {
  bucket = "custom-flow-bucket-2312"

  tags = {
    Name = "Custom Flow Bucket"
  }
}

output "bucket_name" {
  value = aws_s3_bucket.cf_bucket.id
}