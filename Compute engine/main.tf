resource "google_compute_instance" "web-server" {
  name         = var.instance-name
  project      = var.project
  zone         = var.zone
  machine_type = var.machine-type
  tags         = [var.tag_name]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1804-bionic-v20190403"
    }
  }
  network_interface {
    network            = google_compute_network.custom-mode.name
    subnetwork         = google_compute_subnetwork.subnet_custom_vpc.name
    subnetwork_project = var.project
    access_config {
      nat_ip = google_compute_address.static.address
    }
  }
  provisioner "file" {
    source      = "bootstrap.sh"
    destination = "/tmp/bootstrap.sh"
    connection {
      type        = "ssh"
      private_key = file(var.path_to_pvt_key)
      host        = google_compute_address.static.address
      user        = var.vm-user
    }
  }
  provisioner "remote-exec" {

    connection {
      type        = "ssh"
      private_key = file(var.path_to_pvt_key)
      host        = google_compute_address.static.address
      user        = var.vm-user
    }
    inline = [
      "sudo chmod +x /tmp/bootstrap.sh",
      "cd /tmp",
      "sudo ./bootstrap.sh"
    ]
  }
  depends_on = [google_compute_firewall.firewall_custom_vpc]
  service_account {
    email  = var.service-account-email
    scopes = ["compute-ro"]
  }

  metadata = {
    ssh-keys = "${var.vm-user}:${file(var.path_to_public_key)}"
  }
}
resource "google_compute_address" "static" {
  name    = var.address-name
  project = var.project
  region  = var.region
}
