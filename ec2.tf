resource "aws_instance" "bastion" {
  ami           = "ami-0070c5311b7677678"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public_1.id
  security_groups = [ aws_security_group.allow_ssh.id]
  key_name = aws_key_pair.admin.key_name

  tags = {
    Name = "bastion"
  }
}


resource "aws_instance" "application" {
  ami           = "ami-0070c5311b7677678"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.private_1.id
  security_groups = [ aws_security_group.allow_ssh_vpc.id]
  key_name = aws_key_pair.admin.key_name

  tags = {
    Name = "application"
  }
}
