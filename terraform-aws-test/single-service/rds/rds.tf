provider "aws" {
  region = "eu-west-1"
}

variable "db_password" {
  type      = string
  sensitive = true
}

resource "aws_db_instance" "test_rds" {
  identifier            = "iac-single-rds"
  engine                = "mysql"
  instance_class        = "db.t3.micro"
  allocated_storage     = 20
  username              = "admin"
  password              = var.db_password
  db_subnet_group_name  = "single-service-rds-subnet-group"
  publicly_accessible   = false
  skip_final_snapshot   = true
  deletion_protection   = false
}