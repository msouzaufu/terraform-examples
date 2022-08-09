resource "aws_s3_bucket" "this" {
  bucket = "${random_pet.bucket.id}-${var.environment}"

  tags = local.common_tags
}

resource "aws_s3_object" "this" {
  bucket       = aws_s3_bucket.this.bucket
  key          = "config/${local.file_name}"
  source       = local.file_name
  etag         = filemd5(local.file_name)
  content_type = "application/json"


  tags = local.common_tags
}

resource "aws_s3_object" "random" {
  bucket       = aws_s3_bucket.this.bucket
  key          = "config/${random_pet.bucket.id}.json"
  source       = local.file_name
  etag         = filemd5(local.file_name)
  content_type = "application/json"

  tags = local.common_tags
}

resource "aws_s3_bucket" "manual" {
  bucket = "truly-amazingly-wildly-outgoing-grouper-dev"
}
