#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Hello from Terraform-created EC2 instance!</h1>" > /var/www/html/index.html

!/bin/bash
apache.sh
apt-get update
apt-get install -y apache2
systemctl start apache2
systemctl enable apache2
echo "<h1>Hello from Terraform-created Ubuntu EC2 instance!</h1>" > /var/www/html/index.html

module "ec2_instance" {
  source = "YOUR-GITHUB-USERNAME/terraform-module-instance/aws"
  version = "2.0.0"

  instance_type = "t2.micro"
  instance_name = "web-server"
  aws_region    = "us-west-2"
  
