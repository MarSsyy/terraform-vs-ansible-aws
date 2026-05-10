output "alb_dns_name" {
  value = aws_lb.app_alb.dns_name
}

output "s3_bucket_name" {
  value = aws_s3_bucket.app_bucket.bucket
}

output "rds_endpoint" {
  value = aws_db_instance.mysql.endpoint
}