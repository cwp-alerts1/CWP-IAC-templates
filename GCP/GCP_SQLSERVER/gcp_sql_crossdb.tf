resource "google_sql_database_instance" "crossdb" {
  name             = "master-instance"
  database_version = "SQLSERVER_2017_STANDARD"
  region           = "us-central1"
  
  settings {
         database_flags {
            name  = "cross db ownership chaining"
            value = "on"
          }
        ip_configuration {
             require_ssl  = "true"
  }

  }
}
