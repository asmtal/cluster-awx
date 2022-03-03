resource "google_compute_firewall" "awx-fw" {
  name    = "awx-fw"
  network = google_compute_network.awx-vpc.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  source_ranges = [var.ip-range]

}