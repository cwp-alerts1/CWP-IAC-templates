resource "google_sql_database_instance" "local_infile" {
  name             = var.mysqldbname
  database_version = var.mysqldbversion
  region           = var.mysqlregion
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
resource "google_sql_database_instance" "skip" {
  name             = var.mysqldbname
  database_version = var.mysqldbversion
  region           = var.mysqlregion
  settings {
         database_flags {
            name  = "skip_show_database"
            value = "off"
          }
         ip_configuration {
             require_ssl  = "true"
  }
}
}

resource "google_sql_database_instance" "logcheckpoint" {
   name             = var.postgredbname
   database_version = var.postgredbversion
   region           = var.postgreregion 
   settings {
         database_flags {
            name  = "log_checkpoints"
            value = "off"
          }
         ip_configuration {
             require_ssl  = "true"
  }
}
}

resource "google_sql_database_instance" "logconnections" {
   name             = var.postgredbname
   database_version = var.postgredbversion
   region           = var.postgreregion
   settings {
         database_flags {
            name  = "log_connections"
            value = "off"
          }
         ip_configuration {
             require_ssl  = "true"
  }
}
}

resource "google_sql_database_instance" "logdisconnection" {
   name             = var.postgredbname
   database_version = var.postgredbversion
   region           = var.postgreregion
   settings {
         database_flags {
            name  = "log_disconnections"
            value = "off"
          }
         ip_configuration {
             require_ssl  = "true"
  }
}
}

resource "google_sql_database_instance" "logdurartion" {
   name             = var.postgredbname
   database_version = var.postgredbversion
   region           = var.postgreregion
   settings {
         database_flags {
            name  = "log_duration"
            value = "off"
          }
         ip_configuration {
             require_ssl  = "true"
  }
}
}

resource "google_sql_database_instance" "logerrorverbosity" {
   name             = var.postgredbname
   database_version = var.postgredbversion
   region           = var.postgreregion
   settings {
         database_flags {
            name  = "log_errorverbosity"
            value = "off"
          }
         ip_configuration {
             require_ssl  = "true"
  }
}
}

resource "google_sql_database_instance" "logexecutorstatus" {
   name             = var.postgredbname
   database_version = var.postgredbversion
   region           = var.postgreregion
   settings {
         database_flags {
            name  = "log_executorstatus"
            value = "off"
          }
         ip_configuration {
             require_ssl  = "true"
  }
}
}

resource "google_sql_database_instance" "loghostname" {
   name             = var.postgredbname
   database_version = var.postgredbversion
   region           = var.postgreregion
   settings {
         database_flags {
            name  = "log_hostname"
            value = "off"
          }
         ip_configuration {
             require_ssl  = "true"
  }
}
}

resource "google_sql_database_instance" "loglockwaits" {
   name             = var.postgredbname
   database_version = var.postgredbversion
   region           = var.postgreregion
   settings {
         database_flags {
            name  = "log_lockwaits"
            value = "off"
          }
         ip_configuration {
             require_ssl  = "true"
  }
}
}

resource "google_sql_database_instance" "logmindurationstatement" {
   name             = var.postgredbname
   database_version = var.postgredbversion
   region           = var.postgreregion
   settings {
         database_flags {
            name  = "log_mindurationstatement"
            value = "off"
          }
         ip_configuration {
             require_ssl  = "true"
  }
}
}

resource "google_sql_database_instance" "logminerrorstatement" {
   name             = var.postgredbname
   database_version = var.postgredbversion
   region           = var.postgreregion
   settings {
         database_flags {
            name  = "log_minerrorstatement"
            value = "off"
          }
         ip_configuration {
             require_ssl  = "true"
  }
}
}

resource "google_sql_database_instance" "logminerrormessages" {
   name             = var.postgredbname
   database_version = var.postgredbversion
   region           = var.postgreregion
   settings {
         database_flags {
            name  = "log_minmessages"
            value = "off"
          }
         ip_configuration {
             require_ssl  = "true"
  }
}
}

resource "google_sql_database_instance" "logparserstatus" {
   name             = var.postgredbname
   database_version = var.postgredbversion
   region           = var.postgreregion
   settings {
         database_flags {
            name  = "log_parserstatus"
            value = "off"
          }
         ip_configuration {
             require_ssl  = "true"
  }
}
}

resource "google_sql_database_instance" "logplannerstatus" {
   name             = var.postgredbname
   database_version = var.postgredbversion
   region           = var.postgreregion
   settings {
         database_flags {
            name  = "log_plannerstatus"
            value = "off"
          }
         ip_configuration {
             require_ssl  = "true"
  }
}
}

resource "google_sql_database_instance" "logstatement" {
   name             = var.postgredbname
   database_version = var.postgredbversion
   region           = var.postgreregion
   settings {
         database_flags {
            name  = "log_statement"
            value = "off"
          }
         ip_configuration {
             require_ssl  = "true"
  }
}
}

resource "google_sql_database_instance" "logstatementstatus" {
   name             = var.postgredbname
   database_version = var.postgredbversion
   region           = var.postgreregion
   settings {
         database_flags {
            name  = "log_statementstatus"
            value = "off"
          }
         ip_configuration {
             require_ssl  = "true"
  }
}
}

resource "google_sql_database_instance" "logtempfiles" {
   name             = var.postgredbname
   database_version = var.postgredbversion
   region           = var.postgreregion
   settings {
         database_flags {
            name  = "log_tempfiles"
            value = "10"
          }
         ip_configuration {
             require_ssl  = "true"
  }
}
}

resource "google_sql_database_instance" "crossdb" {
   name             = var.sqlserverdbname
   database_version = var.sqlserverdbversion
   region           = var.sqlserverregion
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
resource "google_sql_database_instance" "dbauth" {
   name             = var.sqlserverdbname
   database_version = var.sqlserverdbversion
   region           = var.sqlserverregion
   settings {
         database_flags {
            name  = "contained database authentication"
            value = "on"
          }
         ip_configuration {
             require_ssl  = "true"
  }
}
}
resource "google_sql_database_instance" "extscripts" {
   name             = var.sqlserverdbname
   database_version = var.sqlserverdbversion
   region           = var.sqlserverregion
   settings {
         database_flags {
            name  = "external scripts enabled"
            value = "on"
          }
         ip_configuration {
             require_ssl  = "true"
  }
}
}

resource "google_sql_database_instance" "remoteaccess" {
   name             = var.sqlserverdbname
   database_version = var.sqlserverdbversion
   region           = var.sqlserverregion
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
resource "google_sql_database_instance" "traceflag" {
   name             = var.sqlserverdbname
   database_version = var.sqlserverdbversion
   region           = var.sqlserverregion
   settings {
         database_flags {
            name  = "3625 (trace flag)"
            value = "on"
          }
         ip_configuration {
             require_ssl  = "true"
  }
}
}

resource "google_sql_database_instance" "userconn" {
   name             = var.sqlserverdbname
   database_version = var.sqlserverdbversion
   region           = var.sqlserverregion
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

resource "google_sql_database_instance" "useroptions" {
   name             = var.sqlserverdbname
   database_version = var.sqlserverdbversion
   region           = var.sqlserverregion
   settings {
         database_flags {
            name  = "user options"
            value = "on"
          }
         ip_configuration {
             require_ssl  = "true"
  }
}
}

