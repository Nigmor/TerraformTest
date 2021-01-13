provider "aws" {
  region = "us-gov-east-1"
}

resource "aws_instance" "terraform_demo1" {
  ami = "ami-6f04ef1e"
  instance_type = "t3.micro"
  key_name = "demo-terraform"
  tags = {
    "Name" = "terraform_demo1_amz"
  }
}
