module "ebs" {
  source            = "./modules/vpc"
  region            = us-east1
  availability_zone = us-east1a
  size              = 1
}