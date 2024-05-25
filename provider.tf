terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.25.0"
    }
    random = {
      source = "hashicorp/random"
    }
  }
}

provider "google" {
  # Configuration options
  project = "reliable-vector-421523"
  region = "asia-east2"
  zone = "asia-east2-a"
  credentials = "reliable-vector-421523-595cb31831a9.json"
}

provider "random" {}
