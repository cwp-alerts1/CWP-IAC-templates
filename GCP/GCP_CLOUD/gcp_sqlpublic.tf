resource "google_sql_database_instance" "instance" {
        name = "test123"
        region = "us-central1"
        database_version = "SQLSERVER_2017_STANDARD"
        enable_public_internet_access = true
        deletion_protection           = false

        require_ssl = true

  authorized_networks = [
    {
      name  = "allow-all-inbound"
      value = "0.0.0.0/0"
    },
  ]

        settings {

                database_flags {
                        name  = "slow_query_log"
                        value = "on"
                }

                ip_configuration {
                        ipv4_enabled = "true"
                        require_ssl = true
                }
        }
}
