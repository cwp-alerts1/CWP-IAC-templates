terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
resource "google_compute_instance" "ssh" {
  name         = "test"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"
  metadata = {
     block-project-ssh-keys = false
  }
}
