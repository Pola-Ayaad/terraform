resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.public-vpc.id

  tags = {
    Name = "terrafor-igw"
  }
}