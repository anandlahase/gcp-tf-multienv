provider "google" {
  project = var.bootstrap_project
  region  = var.region
}

provider "google" {
  project = var.bootstrap_project_id
}

provider "google-beta" {
  project = var.bootstrap_project_id
}