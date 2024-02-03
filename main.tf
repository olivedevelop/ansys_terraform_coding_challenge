module "my_vpc" {
  source = "./modules/vpc_module"
  
  aws_region          = var.aws_region
  vpc_cidr_block      = var.vpc_cidr_block
  availability_zones  = var.availability_zones
}

module "my_ec2_instance" {
  source = "./modules/ec2_instance"

  subnet_id = module.my_vpc.public_subnets[0]  # Choose one of the public subnets
  vpc_id    = module.my_vpc.vpc_id
}