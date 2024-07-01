resource "aws_s3_bucket" "env0-self-service-bucket" {
  bucket = "env0-pr-plan-bucket"
  acl = "public-read"
  tags = {
    Name        = "Pull request bucket"
    Environment = "Dev"
  }
}
