resource "aws_s3_bucket" "b" {
  bucket = "my-foo-bucket"

  tags = {
    Name        = "My foo bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "foo-bucket" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}
