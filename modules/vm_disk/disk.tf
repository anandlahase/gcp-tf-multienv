resource "google_compute_disk" "data_disk" {
  name  = var.disk_name
  type  = var.disk_type
  zone  = var.zone
  size  = var.disk_size

  labels = {
    env = var.env
  }
}

output "disk_name" {
  value = google_compute_disk.data_disk.name
}