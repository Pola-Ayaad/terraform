resource "aws_subnet" "public_1" {
  vpc_id                  = aws_vpc.public-vpc.id
  cidr_block              = var.public_subnet_1_module
  map_public_ip_on_launch = "true"
  availability_zone       = "${var.region}a"
}


resource "aws_subnet" "public_2" {
  vpc_id                  = aws_vpc.public-vpc.id
  cidr_block              = var.public_subnet_2_module
  map_public_ip_on_launch = "true"
  availability_zone       = "${var.region}b"
}


resource "aws_subnet" "private_1" {
  vpc_id            = aws_vpc.public-vpc.id
  cidr_block        = var.private_subnet_1_module
  availability_zone = "${var.region}a"

}


resource "aws_subnet" "private_2" {
  vpc_id            = aws_vpc.public-vpc.id
  cidr_block        = var.private_subnet_2_module
  availability_zone = "${var.region}b"

}