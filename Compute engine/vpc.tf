resource "google_compute_network" "custom-mode" {
  name                    = var.vpc_network_custom
  project                 = var.project
  auto_create_subnetworks = false

}

resource "google_compute_subnetwork" "subnet_custom_vpc" {
  name                     = var.subnet_name
  ip_cidr_range            = var.ip_cidr
  project                  = var.project
  region                   = var.region
  network                  = google_compute_network.custom-mode.id
  private_ip_google_access = true

}

resource "google_compute_firewall" "firewall_custom_vpc" {
  name    = var.firewall_rule_name
  network = google_compute_network.custom-mode.name
  project = var.project

  allow {
    protocol = "tcp"
    ports    = ["80", "22"]
  }
  source_ranges = ["0.0.0.0/0"]
  source_tags   = ["web-server"]
  target_tags   = ["web-server"]
}