provider "aws" {
  region = "eu-west-1"
}

resource "random_id" "suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "test_bucket" {
  bucket = "iac-single-s3-${random_id.suffix.hex}"
}

output "bucket_name" {
  value = aws_s3_bucket.test_bucket.bucket
}