terraform {
    required_version = ">= 0.12.0"

    backend "gcs" {
        bucket  = "tf-states-sandbox-abg"
        prefix  = "states"
        credentials = "sandbox-abg-f7bf76d4daf0.json"
    }
}

provider "google" {
  project     = "sandbox-abg"
  region      = "eu-west1"
  credentials = file("sandbox-abg-f7bf76d4daf0.json")
}