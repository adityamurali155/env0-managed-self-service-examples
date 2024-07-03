resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-232213-bucket"

  tags = {
    Name        = "Policy-bucket"
    Environment = "Dev"
  }
}