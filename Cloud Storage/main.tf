resource "google_storage_bucket" "gcs-bucket1" {
  name                        = var.bucket
  location                    = var.location
  storage_class = "NEARLINE"
  force_destroy               = true
  uniform_bucket_level_access = true

     lifecycle_rule {
    condition {
      age = 5
    }
    action {
      type = "SetStorageClass"
      storage_class = "COLDLINE"
    }
  }

  retention_policy {
    is_locked = true
    retention_period = 864000
  }
}

resource "google_storage_bucket_object" "picture" {
  name = "aston-martin"
  bucket = var.bucket
  source = "Aston Martin Supercars_Ultra HD.jpg"

  depends_on = [
    google_storage_bucket.gcs-bucket1
  ]
}
