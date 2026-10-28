data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "app_bucket" {
  bucket = "${var.env}-${var.bucket_name}-${data.aws_caller_identity.current.account_id}"
  tags   = { Name = "${var.env}-${var.bucket_name}", Environment = var.env }
}

resource "aws_s3_bucket_public_access_block" "app_bucket" {
  bucket                  = aws_s3_bucket.app_bucket.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
