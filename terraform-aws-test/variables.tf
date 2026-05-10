variable "region" {
  default = "eu-west-1"
}

variable "project_name" {
  default = "iac-comparison"
}

variable "db_username" {
  default = "adminuser"
}

variable "db_password" {
  description = "RDS database password"
  type        = string
  sensitive   = true
}