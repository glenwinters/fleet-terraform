resource "google_compute_network" "vpc" {
  name                    = "${var.gcp_project_id}-vpc"
  auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "subnet" {
  name          = "${var.gcp_project_id}-subnet"
  network       = google_compute_network.vpc.name
  ip_cidr_range = "10.42.0.0/24"
}
