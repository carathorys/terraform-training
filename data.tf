data "aws_ami" "example" {
  most_recent = true

  owners = ["self"]
  tags = {
    Name   = "app-server"
    Tested = "true"
  }
  # More docs: 
  # https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami
}

# Later you can reference to your data:
locals {
  ami_architecture = data.aws_ami.example.architecture
}
