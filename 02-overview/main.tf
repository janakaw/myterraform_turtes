terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-2"
}



  

resource "aws_instance" "vm_inst" {
  ami           = "ami-0361bbf2b99f46c1d" # Ubuntu 20.04 LTS // us-east-1
  instance_type = "t3.micro"
}
