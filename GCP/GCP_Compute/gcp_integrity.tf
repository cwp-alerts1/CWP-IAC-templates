terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.11"
    }
  }
}
resource "google_compute_instance" "integrity" {
  name         = "test"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"
  boot_disk {}
    shielded_instance_config {
        enable_integrity_monitoring = false
        enable_vtpm                 = false
        }
}
