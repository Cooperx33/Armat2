# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "refresh-bucket"
    prefix = "terraform/state"
    credentials = "coopsclass-65-01ac4fd7170b.json"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}