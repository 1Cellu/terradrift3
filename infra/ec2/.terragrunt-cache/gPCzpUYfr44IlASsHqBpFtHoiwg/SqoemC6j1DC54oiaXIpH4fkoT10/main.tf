terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "this" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "terragrunt-ec2"
  }
}

variable "region" {
  default = "us-east-1"
}

variable "ami_id" {
  description = "AMI a ser usada"
}

variable "instance_type" {
  default = "t2.micro"
}
