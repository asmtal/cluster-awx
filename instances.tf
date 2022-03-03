resource "google_compute_instance" "awx-instance" {
  count        = var.awx-amount
  name         = format("%s-%s", var.awx-name, count.index)
  machine_type = var.awx-machine-type
  zone         = var.awx-zone

  metadata = {
    ssh-keys = join("\n", [for key in var.ssh-keys : "${key.user}:${key.publickey}"])
  }

  boot_disk {
    initialize_params {
      image = var.awx-image
    }
  }

  network_interface {
    network    = google_compute_network.awx-vpc.name
    subnetwork = google_compute_subnetwork.awx-subnet.name
    access_config {
      //Ephemeral IP
    }
  }
}