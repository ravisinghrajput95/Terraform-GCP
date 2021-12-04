output "database_name" {
  value = google_sql_database_instance.postgresql_tf.master_instance_name
}

output "database_id" {
  value = google_sql_database_instance.postgresql_tf.id
}

output "database_public_ip" {
  value = google_sql_database_instance.postgresql_tf.public_ip_address
}

output "database_private_ip" {
  value = google_sql_database_instance.postgresql_tf.private_ip_address
}

output "server_cert" {
  value = google_sql_database_instance.postgresql_tf.server_ca_cert
}

output "database_selflink" {
  value = google_sql_database_instance.postgresql_tf.self_link
}
