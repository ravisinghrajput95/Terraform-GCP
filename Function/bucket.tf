resource "google_storage_bucket" "func_bucket" {
  name     = var.bucket_function
  location = var.location
}

resource "google_storage_bucket_object" "srccode" {
  name   = var.zip_file
  bucket = google_storage_bucket.func_bucket.name
  source = "index.zip"
}
