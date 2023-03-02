# lauch ec2
# which cloud provider - aws
# terraform downloads required dependencies when running -> terraform init
#
 provider "aws" {
    region = "eu-west-1"
 } 

resource "aws_instance" "app_instance" {
  ami           = "ami-0495f6e6ed224deb2"
  instance_type = "t2.micro"
  associate_public_ip_address = true
  tags = {
      Name = "benas-tech201-terraform-app"
  }	
}