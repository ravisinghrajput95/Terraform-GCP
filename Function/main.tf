resource "google_cloudfunctions_function" "func_from_tf" {
  name = var.func_name
  runtime = var.runtime
  description = var.description-func

  available_memory_mb = var.function_memory
  source_archive_bucket = google_storage_bucket.func_bucket.name
  source_archive_object = google_storage_bucket_object.srccode.name

  trigger_http = true
  entry_point = var.entrypoint

}

resource "google_cloudfunctions_function_iam_member" "allowaccess" {
  region = google_cloudfunctions_function.func_from_tf.region
  cloud_function = google_cloudfunctions_function.func_from_tf.name

  role = var.access_role
  member = var.users

}
