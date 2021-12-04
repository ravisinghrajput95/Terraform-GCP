data "google_iam_policy" "instance" {
  binding {
    role = "roles/editor"

    members = [
      "serviceAccount:terraform-gcp@vibrant-arcana-333008.iam.gserviceaccount.com",
    ]
  }
}

data "google_iam_policy" "database" {
  binding {
    role = "roles/editor"

    members = [
      "serviceAccount:terraform-gcp@vibrant-arcana-333008.iam.gserviceaccount.com",
    ]
  }
}
