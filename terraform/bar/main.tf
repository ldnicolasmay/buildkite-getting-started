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
}

resource "aws_s3_bucket" "b" {
  bucket = "my-bar-bucket"

  tags = {
    Name        = "My bar bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "bar-bucket" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}
