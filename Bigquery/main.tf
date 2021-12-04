resource "google_bigquery_dataset" "sales"{
    dataset_id = var.dataset_id
    friendly_name = var.friendly_name
    location = var.location

    labels = {
        env = var.env
    } 
}

resource "google_bigquery_table" "sales_table"{
    dataset_id = google_bigquery_dataset.sales.dataset_id
    table_id = var.table_id
    deletion_protection = false
    time_partitioning {
        type = var.partitioning
    }

    labels = {
        env = var.env
    }

    schema = file("bq_schema.json")

}
