terraform {
  backend "gcs" {
    bucket  = "cloudtech-tf-state-bucket"
    prefix  = "landing-zone"
  }
}