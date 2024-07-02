terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
  access_key = "AKIA5FTZDOOGODMNJ34T"
  secret_key = "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"
}

resource "aws_instance" "app_server_diego" {
  ami           = "ami-0cf2b4e024cdb6960"
  instance_type = "t2.micro"
  key_name = "projeto-final-diego"
  tags = {
    Name = "Primeira instância - Diego"
  }
}