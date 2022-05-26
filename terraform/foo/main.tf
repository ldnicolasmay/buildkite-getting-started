terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"

  assume_role {
    role_arn = "arn:aws:iam::164557480116:role/S3FullAccess"
    session_name = "foo_session"
  }
}

resource "aws_s3_bucket" "f" {
  bucket = "my-foo-bucket"

  tags = {
    Name        = "My foo bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "foo-bucket" {
  bucket = aws_s3_bucket.f.id
  acl    = "private"
}
