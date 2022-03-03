resource "google_compute_subnetwork" "awx-subnet" {
  name          = "awx-subnet"
  ip_cidr_range = "10.244.0.0/24"
  region        = "us-central1"
  network       = google_compute_network.awx-vpc.id
}