resource "aws_s3_bucket" "dan123456789_s3_bucket" {
  bucket = "dan-terraform-bucket-123456789"

  tags = {
    Name = "dan123456789-s3-buck"
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.dan123456789_s3_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_public_access_block" "public_block" {
  bucket = aws_s3_bucket.dan123456789_s3_bucket.id

  block_public_acls   = true
  block_public_policy = true
}

resource "aws_s3_bucket_lifecycle_configuration" "lifecycle" {
  bucket = aws_s3_bucket.dan123456789_s3_bucket.id

  rule {
    status = "Enabled"

    expiration {
      days = 1
    }
  }
}
