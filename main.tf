terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.13.4"
}

provider "aws" {
  profile = "default"
  region  = "eu-west-1"
}

resource "aws_instance" "mule-server" {
  ami           = "ami-0460b00348daa941f"
  instance_type = "t2.small"
  vpc_security_group_ids  = ["sg-05b7aef37ece876c6"]
  tags = {
    Name = "TerraformLocalDemo"
  }
}