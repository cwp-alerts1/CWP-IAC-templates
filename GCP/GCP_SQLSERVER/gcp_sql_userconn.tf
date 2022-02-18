resource "google_sql_database_instance" "userconn" {
  name             = "master-instance"
  database_version = "SQLSERVER_2017_STANDARD"
  region           = "us-central1"
  
  settings {
         database_flags {
            name  = "user connections"
            value = "on"
          }
         ip_configuration {
             require_ssl  = "true"
  }

  }
}
