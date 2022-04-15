resource "aws_instance" "ebs_optimized" {
  ami           = var.ami_id
  instance_type = var.type
  ingress_cidr_blocks = var.cidr_blocks
  ebs_optimized = false
  tags = {
    Name = "ExampleAppServerInstance"
  }
}



resource "aws_instance" "monitoring" {
  ami           = var.ami_id
  instance_type = var.type
  ingress_cidr_blocks = var.cidr_blocks
  monitoring = false
  tags = {
    Name = "ExampleAppServerInstance"
  }
}
resource "google_compute_instance" "confidential" {
  name         = var.gcp_name
  machine_type = var.machine_type
  zone         = var.zone
  confidential_instance_config {
     enable_confidential_compute = false
  }
}
resource "google_compute_instance" "integrity" {
  name         = var.gcp_name
  machine_type = var.machine_type
  zone         = var.zone
  boot_disk {}
    shielded_instance_config {
        enable_integrity_monitoring = false
        enable_vtpm                 = false
        }
}

resource "google_compute_instance" "ipforwarding" {
  name         = var.gcp_name
  machine_type = var.machine_type
  zone         = var.zone
  can_ip_forward = true
        }

resource "google_compute_instance" "projectssh" {
  name         = var.gcp_name
  machine_type = var.machine_type
  zone         = var.zone
  metadata {
    block-project-ssh-keys = true
  
        }
}
resource "google_compute_instance" "publicip" {
  name         = var.gcp_name
  machine_type = var.machine_type
  zone         = var.zone
  access_config {
    content {
        nat_ip       = "192.168.0.0"
      }
    }
}
resource "google_compute_instance" "serialport" {
  name         = var.gcp_name
  machine_type = var.machine_type
  zone         = var.zone
  serial-port-enable = true
}
resource "google_compute_instance" "serviceaccount" {
  name         = var.gcp_name
  machine_type = var.machine_type
  zone         = var.zone
  service_account {
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
    email  = "[PROJECT_NUMBER]-compute@developer.gserviceaccount.com"
  }
}
