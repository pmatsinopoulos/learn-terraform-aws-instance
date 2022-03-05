terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = "~> 1.1.0"
}

provider "aws" {
  profile = "me"
  region  = "eu-central-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0e06412e7a2ab14a2"
  instance_type = "t2.micro"

  tags = {
    environment = "experiment",
    Name = var.instance_name
  }
}
