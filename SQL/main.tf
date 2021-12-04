resource "random_id" "db_name_suffix" {
  byte_length = 4
}

resource "google_sql_database_instance" "postgresql_tf" {
  name                = "${var.postgresql_instance_name}-${random_id.db_name_suffix.hex}"
  project             = var.project
  region              = var.region
  database_version    = var.postgresql_version
  deletion_protection = false

  settings {
    tier              = var.tier
    availability_type = var.availability_type

    ip_configuration {
      require_ssl  = false
      ipv4_enabled = true
    }

    backup_configuration {
      enabled = true
    }

    maintenance_window {
      day          = 1
      hour         = 2
      update_track = var.update_track
    }
  }
}

resource "google_sql_user" "postgresql_tf_user" {
  name     = var.postgresql_user
  password = var.postgresql_password
  instance = google_sql_database_instance.postgresql_tf.name
}

resource "google_sql_database_instance" "postgresql_tf_replica" {
  provider = google-beta

  project              = var.project
  name                 = var.postgresql_instance_name_replica
  region               = var.region
  database_version     = var.postgresql_version
  master_instance_name = google_sql_database_instance.postgresql_tf.name
  deletion_protection  = false

  replica_configuration {
    failover_target = true
  }

  settings {
    tier              = var.tier
    availability_type = var.availability_type

    ip_configuration {
      require_ssl  = false
      ipv4_enabled = true
    }

    location_preference {
      zone = var.zone
    }

    maintenance_window {
      day          = 1
      hour         = 2
      update_track = var.update_track
    }
  }
}
