terraform {
  backend "gcs" {
    bucket = "cloudtech-tf-state-dev"
    prefix = "dev"
  }
}