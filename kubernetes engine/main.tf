resource "google_container_cluster" "gke_tf" {
  name     = var.cluster-name
  location = var.location

  remove_default_node_pool = true
  initial_node_count       = var.node_count

  addons_config {
    horizontal_pod_autoscaling {
      disabled = !var.horizontal_pod_autoscaling
    }

    http_load_balancing {
      disabled = !var.http_load_balancing
    }

    network_policy_config {
      disabled = !var.enable_network_policy
    }
  }
}

resource "google_container_node_pool" "gke_nodepool" {
  name               = var.nodepool_name
  location           = var.location
  cluster            = google_container_cluster.gke_tf.name
  initial_node_count = var.node_count

  autoscaling {
    min_node_count = var.min_node_count
    max_node_count = var.max_node_count
  }

  management {
    auto_repair  = var.auto_repair
    auto_upgrade = var.auto_upgrade
  }

  node_config {
    preemptible  = var.enable_preemptible
    machine_type = var.machine_type

    labels = {
      env = var.env
    }

    tags = [var.tag1, var.tag2]

    disk_size_gb = var.disk_size_gb
    disk_type    = var.disk_type

    service_account = var.service_account_name
    oauth_scopes = [
      var.scopes
    ]
  }

  lifecycle {
    ignore_changes = [initial_node_count]
  }

  timeouts {
    create = var.timeout_create
    update = var.timeout_update
    delete = var.timeout_delete
  }
}
