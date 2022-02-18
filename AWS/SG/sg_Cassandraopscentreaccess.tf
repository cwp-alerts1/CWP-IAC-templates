terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
resource "aws_security_group" "CassandraOps" {
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 9042
    to_port     = 9042
    protocol    = "tcp"
  }
}
