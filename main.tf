terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.5.0"
    }
  }
  required_version= ">= 0.14.9"
}

# Configure the AWS Provider
provider "aws" {
  profile = "default"
  region = "us-east-1"
}

#creating vpc
resource "aws_vpc" "provpc" {
  cidr_block = "10.10.0.0/16"

  tags = {
    Name = "${var.name}"
  }
}


