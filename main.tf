terraform {
  required_version = ">= 0.12.0"

  backend "gcs" {
    bucket      = "tf-states-sandbox-abg"
    prefix      = "states"
    credentials = ".auth/sandbox-abg-f7bf76d4daf0.json"
  }
}

provider "google" {
  project     = var.project_id
  region      = var.region
  credentials = file(".auth/sandbox-abg-f7bf76d4daf0.json")
}