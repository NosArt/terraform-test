module "ebs" {
  source            = "./modules/ebs"
  region            = "us-east-1"
  availability_zone = "us-east-1a"
  size              = "1"
}

module "ec2" {
    source            = "./modules/ec2"
    region            = "us-east-1"
    availability_zone = "us-east-1a"
    ami               = "ami-0a8b4cd432b1c3063"
    instance_type     = "t2.micro"
    volume_id         = module.ebs.ebs_id
}