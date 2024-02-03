module "my_vpc" {
  source = "./modules/vpc_module"
  
  aws_region          = var.aws_region
  vpc_cidr_block      = var.vpc_cidr_block
  availability_zones  = var.availability_zones
}