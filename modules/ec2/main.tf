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
  ami               = var.ami
  availability_zone = var.availability_zone
  instance_type     = var.instance_type
#   vpc_id        = var.vpc_id
#   subnet_id     = var.subnet_id
#   sg_id         = var.sg_id
#   ebs_volume    = var.ebs_volume
}

resource "aws_volume_attachment" "this" {
  device_name       = "/dev/sdh"
  volume_id         = var.volume_id
  instance_id       = aws_instance.this.id
}

