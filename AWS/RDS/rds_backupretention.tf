terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
resource "aws_db_instance" "education" {
    name                      = "education"
    instance_class            = "db.t3.micro"
    allocated_storage         = 10
    backup_retention_period   = 1
    storage_encrypted         = false
    #kms_key_id = aws_kms_key.mykey.arn
}
