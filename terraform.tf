terraform {
  backend "local" {
    path          = ".terraform-state"
    workspace_dir = "./"
  }

  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.1.3"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.11.0"
    }
  }
}


resource "aws_vpc" "main" {
  cidr_block = var.base_cidr_block
  tags = {
    "Project" = "Zoosh-TF"
  }
}

variable "base_cidr_block" {
  description = "A /16 CIDR range definition, such as 10.1.0.0/16, that the VPC will use"
  default     = "10.1.0.0/16" # This is a comment in our code
}
