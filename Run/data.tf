data "google_iam_policy" "access" {
  binding {
    role    = "roles/run.invoker"
    members = ["allUsers"]
  }
}