module "network" {
  source                  = "./network"
  region                  = var.region
  vpc_cidr_module         = var.vpc_cidr
  public_subnet_1_module  = var.public_subnet_1
  public_subnet_2_module  = var.public_subnet_2
  private_subnet_1_module = var.private_subnet_1
  private_subnet_2_module = var.private_subnet_2

}