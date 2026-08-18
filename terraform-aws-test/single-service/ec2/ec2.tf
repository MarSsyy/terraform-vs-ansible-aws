provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "test_ec2" {
  ami           = "ami-0ada9eff90324cb27"
  instance_type = "t3.micro"
  subnet_id     = "subnet-001cc6dd122a7b651"

  tags = {
    Name = "iac-single-ec2"
  }
}