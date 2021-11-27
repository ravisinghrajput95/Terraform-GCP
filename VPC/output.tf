output "auto" {
  value = google_compute_network.auto-mode.self_link
}

output "custom" {
  value = google_compute_network.custom-mode.self_link
}

output "auto-vpc-id" {
  value = google_compute_network.auto-mode.id
}

output "custom-vpc-id" {
  value = google_compute_network.custom-mode.id
}
