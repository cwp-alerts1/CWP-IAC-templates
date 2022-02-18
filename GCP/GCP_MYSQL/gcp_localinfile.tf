terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
resource "google_sql_database_instance" "local_infile" {
  name             = "master-instance"
  database_version = "MYSQL_8_0"
  region           = "us-central1"
  settings {
         database_flags {
            name  = "local_infile"
            value = "on"
          }
         ip_configuration {
             require_ssl  = "true"
  }
}
}
resource "google_sql_ssl_cert" "client_cert" {
  common_name = "client-name"
  instance    = google_sql_database_instance.default.name
}
