provider "google" {
  access_token = var.gcp_access_token
  project      = var.gcp_project_id
  region       = "us-central1"
}

provider "google-beta" {
  access_token = var.gcp_access_token
  project      = var.gcp_project_id
  region       = "us-central1"
}
