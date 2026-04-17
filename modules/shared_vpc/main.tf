resource "google_compute_shared_vpc_host_project" "host" {
  project = var.host_project_id
}

resource "google_compute_shared_vpc_service_project" "attach" {
  for_each = var.service_projects

  host_project    = var.host_project_id
  service_project = each.value
}