data "google_project" "fleet" {}

output "project_number" {
  value = data.google_project.project.number
}
