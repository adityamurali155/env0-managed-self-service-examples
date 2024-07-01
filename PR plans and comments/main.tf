resource "aws_s3_bucket" "env0-pr-plan-bucket" {
  bucket = "env0-PR-plan-bucket"

  tags = {
    Name        = "Pull request bucket"
    Environment = "Dev"
  }
}