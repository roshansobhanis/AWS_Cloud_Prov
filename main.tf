provider "aws" {
  region = var.region
  access_key = "AKIA3XM2SJNPR7N2MWZZ"
  secret_key = "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"
}

data "aws_ami" "ubuntu1" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "ubuntu" {
  ami           = data.aws_ami.ubuntu1.id
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
