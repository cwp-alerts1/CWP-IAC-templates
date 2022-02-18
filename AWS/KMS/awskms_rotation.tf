terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
resource "aws_kms_key" "kms_key_1" {
  description             = "KMS key 1"
  deletion_window_in_days = 10
  is_enabled              = true
 # enable_key_rotation    = true
}
