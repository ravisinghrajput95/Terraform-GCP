resource "google_spanner_instance" "main" {
  config       = var.config
  display_name = var.display_name
  num_nodes    = var.num_nodes
}

resource "google_spanner_database" "database" {
  instance = google_spanner_instance.main.name
  name     = var.name
  ddl = [
    "CREATE TABLE t1 (t1 INT64 NOT NULL,) PRIMARY KEY(t1)",
    "CREATE TABLE t2 (t2 INT64 NOT NULL,) PRIMARY KEY(t2)",
  ]
  deletion_protection = false
}

resource "google_spanner_database_iam_policy" "database" {
  instance    = google_spanner_instance.main.name
  database    = google_spanner_database.database.name
  policy_data = data.google_iam_policy.database.policy_data
}

resource "google_spanner_instance_iam_policy" "instance" {
  instance    = google_spanner_instance.main.name
  policy_data = data.google_iam_policy.instance.policy_data
}
