# Commenting this out for now because it seems this is buggy
# https://github.com/hashicorp/terraform-provider-google/issues/10436
# TODO use a loop to generate registries based on a list of names
# resource "google_artifact_registry_repository" "fleet_graph_gateway_registry" {
#   provider = google-beta

#   repository_id = "fleet-graph-gateway"
#   location      = "us-central1"
#   format        = "DOCKER"
# }
