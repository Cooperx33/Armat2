resource "google_cloud_run_service" "red" {
  name     = "cloudrun-05"
  location = "us-central1"

  template {
    spec {
      containers {
        image = "us-central1-docker.pkg.dev/coopsclass-65/armat2/test:latest"
        env {
          name  = "color"
          value = "orange"
        }
    }
  }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}

resource "google_cloud_run_service_iam_member" "member" {
  location = google_cloud_run_service.red.location
  project = google_cloud_run_service.red.project
  service = google_cloud_run_service.red.name
  role = "roles/viewer"
  member = "allUsers"
}