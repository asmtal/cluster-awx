resource "google_compute_network" "awx-vpc" {
  name                    = "awx-vpc"
  auto_create_subnetworks = false

}