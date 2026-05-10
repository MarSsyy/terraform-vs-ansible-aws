#!/bin/bash
dnf update -y
dnf install -y httpd
systemctl enable httpd
systemctl start httpd

echo "<h1>IaC Deployment Test - Terraform/Ansible AWS Infrastructure</h1>" > /var/www/html/index.html