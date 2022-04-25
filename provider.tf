provider "aws" {
  profile = local.aws_profile
  region  = local.aws.region

  default_tags {
    tags = {
      "Project" = "Zoosh-Terraform-Training"
    }
  }
}
