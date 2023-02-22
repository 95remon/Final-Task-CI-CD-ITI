terraform {
  backend "gcs" {
    bucket = "remonlouis-tf-state-gcp-finaltask"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}