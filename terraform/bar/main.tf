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
