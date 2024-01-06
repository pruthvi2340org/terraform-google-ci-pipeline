resource "google_project_service" "artifact_registry" {
  project = var.project_id
  service = "artifactregistry.googleapis.com"
  disable_dependent_services=true
}

resource "google_project_service" "secretmanager" {
  project = var.project_id
  service = "secretmanager.googleapis.com"
  disable_dependent_services=true
}

resource "google_artifact_registry_repository" "gcp-docker-repo" {
  location      = var.location
  repository_id = var.name
  description   = "docker repository"
  format        = "DOCKER"

  docker_config {
    immutable_tags = true
  }
}

data "google_project" "project" {}
