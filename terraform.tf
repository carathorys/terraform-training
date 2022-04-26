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
