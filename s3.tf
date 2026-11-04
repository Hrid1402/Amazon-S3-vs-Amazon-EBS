resource "aws_s3_bucket" "demo_s3" {
  bucket_prefix = "s3-demo-"
}

resource "aws_s3_bucket_public_access_block" "demo_s3" {
  bucket = aws_s3_bucket.demo_s3.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}


resource "aws_s3_bucket_server_side_encryption_configuration" "demo_s3" {
  bucket = aws_s3_bucket.demo_s3.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}


resource "aws_s3_bucket_versioning" "demo_s3" {
  bucket = aws_s3_bucket.demo_s3.id

  versioning_configuration {
    status = "Enabled"
  }
}