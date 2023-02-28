provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "test_server" {
  ami           = "ami-0dfcb1ef8550277af"
  instance_type = "t2.micro"

  tags = {
    Name = "TestServer"
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}