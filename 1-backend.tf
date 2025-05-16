# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "southpawstate-01"
    prefix = "terraform/state"
    credentials = "class-6-5-carlton-quaye-a9df9887e8d9.json"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
}
