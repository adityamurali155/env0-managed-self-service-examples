package s3policy

default allow = false

allow {
    input.resource_type == "aws_s3_bucket"
    input.provider == "aws"
    input.config.versioning.enabled == true
    input.config.acl == "private"
}
