terraform {
  backend "s3" {
    bucket = "terraform-bucket-852"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
