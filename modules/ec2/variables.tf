variable "region" {
  type    = string
  default = "us-east-1"
}

variable "ami_id" {
  type    = string
  default = ""
}

variable "vpc_id" {
  type    = string
  default = ""
}

variable "subnet_id" {
  type    = string
  default = ""
}

variable "sg_id" {
  type    = string
  default = ""
}

variable "instance_type" {
  type    = string
  default = "t2-micro"
}

variable "ebs_volume" {
  type    = string
  default = ""
}

