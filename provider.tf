terraform {
  required_version = ">= 1.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 5.11.0, < 6.0.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">= 5.11.0, < 6.0.0"
    }
  }
}


provider "google" {
  project = var.project_id
  region  = var.region
  credentials = var.GOOGLE_APPLICATION_CREDENTIALS
}
