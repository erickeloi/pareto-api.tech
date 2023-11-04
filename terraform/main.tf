terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.4.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 5.4.0"
    }
  }
}

provider "google" {
    project =   var.project_id
    region  =   var.region
    zone    =   var.zone
    credentials = file(var.credentials_path)
}

provider "google-beta" {
  project     = var.project_id
  region      = var.region
  credentials = file(var.credentials_path)
}

