resource "aws_vpc" "public-vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = "false"
  enable_dns_hostnames = "true"
  tags = {
    Name = "public-vpc"
  }
}


