locals {
  public_key = file("${path.root}/ec2-key.pub")
}

module "dev" {
  source         = "./infra-apps"
  env            = "dev"
  bucket_name    = "infra-app-bucket"
  instance_count = 1
  instance_type  = "t3.micro"
  hash_key       = "studentID"
  public_key     = local.public_key
  ssh_cidr       = var.my_ip_cidr
}

module "stg" {
  source         = "./infra-apps"
  env            = "stg"
  bucket_name    = "infra-app-bucket"
  instance_count = 1
  instance_type  = "t3.small"
  hash_key       = "studentID"
  public_key     = local.public_key
  ssh_cidr       = var.my_ip_cidr
}

module "prd" {
  source           = "./infra-apps"
  env              = "prd"
  bucket_name      = "infra-app-bucket"
  instance_count   = 2
  instance_type    = "t3.small"
  root_volume_size = 20
  hash_key         = "studentID"
  public_key       = local.public_key
  ssh_cidr         = var.my_ip_cidr
}
