output "name" {
  description = "The name of the cluster master. This output is used for interpolation with node pools, other modules."
  value       = google_container_cluster.gke_tf.name
}

output "master_version" {
  description = "The Kubernetes master version."
  value       = google_container_cluster.gke_tf.master_version
}