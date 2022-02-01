variable "region" {
  type    = string
  default = "us-east-1"
}

variable "ami" {
  type    = string
  default = ""
}

variable "availability_zone" {
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

variable "volume_id" {
  type    = string
  default = ""
}

