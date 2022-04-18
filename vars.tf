variable "gcp_project_id" {
  type        = string
  description = "Google Cloud Platform (GCP) project ID used for the provider"
}

variable "gcp_access_token" {
  type        = string
  description = "Google Cloud Platform (GCP) access token used for the provider"
  sensitive   = true
}
