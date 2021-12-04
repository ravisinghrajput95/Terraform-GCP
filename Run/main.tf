resource "google_cloud_run_service" "service" {
  name     = var.service
  location = var.location

  template {
    spec {
      containers {
        image = var.image
      }
    }
  }

}

resource "google_cloud_run_service_iam_policy" "pub_access" {
  service     = google_cloud_run_service.service.name
  location    = google_cloud_run_service.service.location
  policy_data = data.google_iam_policy.access.policy_data
}
