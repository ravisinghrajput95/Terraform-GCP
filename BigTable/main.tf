resource "google_bigtable_instance" "bigtable_instance" {
  name = var.name

  cluster {
    cluster_id   = var.cluster_id
    zone         = var.zone
    num_nodes    = var.num_nodes
    storage_type = var.storage_type
  }
  lifecycle {
    prevent_destroy = false
  }
}

resource "google_bigtable_table" "table" {
  name          = var.table_name
  instance_name = google_bigtable_instance.bigtable_instance.name

  lifecycle {
    prevent_destroy = false
  }
}

resource "google_bigtable_table_iam_policy" "editor" {
  project     = var.project
  instance    = var.name
  table       = google_bigtable_table.table.name
  policy_data = data.google_iam_policy.admin.policy_data
}

resource "google_bigtable_app_profile" "ap" {
  instance       = google_bigtable_instance.bigtable_instance.name
  app_profile_id = var.app_profile_id

  single_cluster_routing {
    cluster_id                 = var.cluster_id
    allow_transactional_writes = true
  }

  ignore_warnings = true

}
