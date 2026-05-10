#!/bin/bash
dnf update -y
dnf install -y httpd
systemctl enable httpd
systemctl start httpd

echo "<h1>Ansible AWS Infrastructure Deployment</h1>" > /var/www/html/index.html
