terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
resource "aws_security_group" "example" {
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 27017
    to_port     = 27017
    protocol    = "tcp"
  }
}
