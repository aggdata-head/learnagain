terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "eu-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0fb391cce7a602d1f"
  instance_type = "t2.micro"
  tags = {
    Name = "HelloWordAppServer"
  }
}

# resource "aws_vpc" "sunday_vpc" {
#   cidr_block = "10.0.0.0/16"
# }

