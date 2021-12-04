output "dataset" {
    value = google_bigquery_dataset.sales
    description = "Bigquery dataset resource."
}

output "tables" {
    value = google_bigquery_dataset.sales
    description = "Map of bigquery table resources being provisioned."
}
