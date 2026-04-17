resource "google_compute_network" "vpc" {
  name                    = "shared-vpc"
  auto_create_subnetworks = false
  project                 = var.project_id
}

resource "google_compute_subnetwork" "subnets" {
  for_each = var.subnets

  name          = each.key
  ip_cidr_range = each.value
  region        = var.region
  network       = google_compute_network.vpc.id
  project       = var.project_id
}