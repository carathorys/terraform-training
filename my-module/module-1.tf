# resource "resource_type" "resource_name"
resource "aws_instance" "web" {
  # ami property required by aws_instance
  ami = "ami-a1b2c3d4"
  # instance_type property required by aws_instance
  instance_type = "t2.micro"
  # More options here: 
  # https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
}

# Later you can use the `web` as an output for example: 
output "instance_details" {
  depends_on = [
    aws_instance.web # You can reference the resource with the "resource_type"."resource_name" you've provided
  ]
  description = "ARN of our new instance"
  sensitive   = false
  value       = aws_instance.web.arn
}
