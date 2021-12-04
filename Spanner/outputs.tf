output "spanner_instance_id" {
  value = google_spanner_database.database.id
}

output "spanner_instance_state" {
  value = google_spanner_database.database.state
}

output "db_policy_etag" {
  value = google_spanner_database_iam_policy.database.etag
}

output "instance_policy_etag" {
  value = google_spanner_instance_iam_policy.instance.etag
}
