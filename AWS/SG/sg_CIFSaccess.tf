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
    from_port   = 137
    to_port     = 138
    protocol    = "udp"
  }
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 139
    to_port     = 139
    protocol    = "tcp"
  }
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 445
    to_port     = 445
    protocol    = "tcp"
  }
}
