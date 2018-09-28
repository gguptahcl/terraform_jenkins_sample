provider "aws" {
 # access_key = "${var.ACCESS_KEY}"
 # secret_key = "${var.SECRET_KEY}"
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
}
