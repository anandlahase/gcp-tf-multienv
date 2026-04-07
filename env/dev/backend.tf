terraform {
  backend "gcs" {
    bucket = "tf-state-gcp-devnew"
    prefix = "terraform/dev"
  }
}