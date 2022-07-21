resource "aws_vpc" "public-vpc" {
  cidr_block           = var.vpc_cidr_module
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"
  tags = {
    Name = "public-vpc"
  }
}

##WHY## to get the time of the creation 
resource "null_resource" "command" {
  
  provisioner "local-exec" {
    command = "date > date.txt"
  }
}
