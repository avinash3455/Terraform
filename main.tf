provider "aws" {
  alias = "us-east-1"
  region = "us-east-1"
}
resource "aws_instance" "Bhavani_East" {
  #ami           = "ami-0030e4319cbf4dbf2"
  ami = var.ami_id
  instance_type = var.instance_type
  provider      = aws.us-east-1

  tags = {
    Name = "Bhavani_East"
  }
}