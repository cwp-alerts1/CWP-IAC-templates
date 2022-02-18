resource "google_sql_database_instance" "remoteaccess" {
  name             = "master-instance"
  database_version = "SQLSERVER_2017_STANDARD"
  region           = "us-central1"
  
  settings {
         database_flags {
            name  = "remote access"
            value = "on"
          }
         ip_configuration {
             require_ssl  = "true"
  }

  }
}
