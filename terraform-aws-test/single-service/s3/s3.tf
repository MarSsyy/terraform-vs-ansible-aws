provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "test_bucket" {
  bucket = "terraform-single-s3-fahim-20115491"
}

output "bucket_name" {
  value = aws_s3_bucket.test_bucket.bucket
}