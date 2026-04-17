resource "google_storage_bucket" "state" {
  name     = var.bucket_name
  location = "ASIA-SOUTH1"
  project  = var.project_id

  versioning {
    enabled = true
  }
}