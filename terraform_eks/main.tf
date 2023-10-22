# Security Group for EKS worker nodes
module "sgs" {
  source = "./modules/sg_eks"
  vpc_id = module.network.vpc_id
  allowed_ssh_cidr_block = var.allowed_ssh_cidr_blocks
}

module "eks" {
  source        = "./modules/eks"
  sg_ids        = module.sgs.security_group_public
  vpc_id        = module.network.vpc_id
  subnet_ids    = [module.network.subnet1_id , module.network.subnet2_id]
  instance-type = "t2.micro"
  ssh-key       = "samplekey"
}

# Network Module
module "network" {
  source        = "./modules/network"
  vpc-cidr      = var.cidr
  subnet1-cidr  = "10.0.0.0/24"
  subnet1_az    = "us-east-1a"
  subnet2-cidr  = "10.0.1.0/24"
  subnet2_az    = "us-east-1b"
  
}

# Security Module
module "security" {
  source        = "./modules/security"
  vpc_id        = module.network.vpc_id
  allowed_ssh_cidr_block = var.allowed_ssh_cidr_blocks
  
}

# Compute Module
module "compute" {
  source                            = "./modules/compute"
  ami-value                         = "ami-0261755bbcb8c4a84"
  instance-type                     = "t2.micro"
  aws_security_group_demo_vpc_sg_id = module.security.demo_sg_id
  demo_subnet1_id                   = module.network.subnet1_id
  demo_subnet2_id                   = module.network.subnet2_id

}



