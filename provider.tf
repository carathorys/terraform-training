# Set up AWS Provider
provider "aws" {
  # Use a local, named profile
  profile = local.aws_profile
  # Use the following region to deploy our stack
  region = local.aws.region

  # Add tags to each resource we're provisioning with Terraform
  default_tags {
    tags = {
      "Project" = "Zoosh-Terraform-Training"
    }
  }
  # For more settings, please visit TF registry: 
  # https://registry.terraform.io/providers/hashicorp/aws/latest/docs
}
