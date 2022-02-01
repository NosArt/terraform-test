terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
}

resource "aws_instance" "this" {
  ami           = var.ami_id
  vpc_id        = var.vpc_id
  subnet_id     = var.subnet_id
  sg_id         = var.sg_id
  instance_type = var.instance_type
  ebs_volume    = var.ebs_volume
}

