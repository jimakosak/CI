provider "aws" {
  region = "us-west-2"  # Update with your desired AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-0c94855ba95c71c99"  # Ubuntu 20.04 LTS
  instance_type = "t2.micro"
  key_name      = "your-key-pair-name"     # Update with your SSH key pair name

  tags = {
    Name = "UbuntuInstance"
  }
}
