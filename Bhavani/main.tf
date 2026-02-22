provider "aws" {
  alias = "us-east-1"
  region = "us-east-1"
}
provider "aws" {
  alias = "us-west-2"
  region = "us-west-2"
}

resource "aws_instance" "Bhavani_East" {
  ami           = "ami-0030e4319cbf4dbf2"
  instance_type = "t3.micro"
  provider      = aws.us-east-1

  tags = {
    Name = "Bhavani_East"
  }
}

resource "aws_instance" "Bhavani_West" {
  ami           = "ami-0030e4319cbf4dbf2"
  instance_type = "t3.micro"
  provider      = aws.us-west-2

  tags = {
    Name = "Bhavani_West"
  }
  
}