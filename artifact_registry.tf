resource "google_artifact_registry_repository" "armat2" {
  location      = "us-central1"
  repository_id = "armat2"
  description   = "example docker repository"
  format        = "DOCKER"
}