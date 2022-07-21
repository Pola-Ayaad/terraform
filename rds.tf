resource "aws_db_subnet_group" "db_subnet_group" {
  name      = "db_subnet_group"
  subnet_ids = [module.network.subnet_private_1_id, module.network.subnet_private_2_id]
}


resource "aws_db_instance" "rds_instance" {
  allocated_storage   = 20
  identifier          = "rds-terraform"
  storage_type        = "gp2"
  engine              = "mysql"
  engine_version      = "8.0.27"
  instance_class      = "db.t2.micro"
  name                = "db_name"
  username            = "admin"
  password            = "123456"
  publicly_accessible = true
  skip_final_snapshot = true


  tags = {
    Name = "ExampleRDSServerInstance"
  }
}