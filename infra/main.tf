resource "aws_s3_bucket" "this" {
  bucket        = "${var.accountid}-${var.bucket_name}-${var.environment}"
  force_destroy = var.force_destroy

  tags = {
    Name        = var.bucket_name
    environment = var.environment
    ManagedBy   = "terraform"
  }
}

resource "aws_s3_bucket_versioning" "this" {
  bucket = aws_s3_bucket.this.id

  versioning_configuration {
    status = var.versioning
  }
}


resource "aws_s3_bucket_public_access_block" "this" {
  bucket = aws_s3_bucket.this.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}