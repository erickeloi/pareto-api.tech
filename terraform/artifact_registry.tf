resource "google_artifact_registry_repository" "repo_pareto-api" {
  location      = var.region
  repository_id = var.gar_repository_id
  format        = "DOCKER"

  docker_config {
    immutable_tags = true
  }
}