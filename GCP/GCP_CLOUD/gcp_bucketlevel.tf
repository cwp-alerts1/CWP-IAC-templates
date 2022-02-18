terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
resource "google_storage_bucket" "Bucketlevel" {
    name     = "TestBucket"
    bucket_policy_only = true
    uniform_bucket_level_access = false
}
