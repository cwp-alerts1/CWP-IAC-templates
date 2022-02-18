terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
resource "google_compute_instance" "confidential" {
  name         = "test"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"
  confidential_instance_config {
     enable_confidential_compute = false
  }
}
