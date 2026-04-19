terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"

} 
resource "aws_instance" "jenkins_ec2" {
  ami           = "ami-0ec10929233384c7f"
  instance_type = "t3.micro"

  tags = {
    Name = "Jenkins-Terraform-Instance"
  }
}
