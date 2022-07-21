resource "aws_instance" "bastion" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = module.network.subnet_public_1_id
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  key_name               = aws_key_pair.admin.key_name

  tags = {
    Name = "bastion"
  }
}


resource "aws_instance" "application" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = module.network.subnet_private_1_id
  vpc_security_group_ids = [aws_security_group.allow_ssh_vpc.id]
  key_name               = aws_key_pair.admin.key_name

  tags = {
    Name = "application"
  }
}
