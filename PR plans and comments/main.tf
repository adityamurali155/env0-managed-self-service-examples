resource "aws_s3_bucket" "env0-pr-plan-bucket" {
  bucket = "PR-plan-bucket"
  acl = "public-read"
  tags = {
    Name        = "Pull request bucket"
    Environment = "Dev"
  }
}
