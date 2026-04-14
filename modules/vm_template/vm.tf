resource "google_compute_instance_template" "template" {
  name_prefix  = "${var.env}-template-"
  machine_type = var.machine_type
  region       = var.region

  tags   = var.tags
  labels = var.labels

  # Boot disk
  disk {
    boot         = true
    auto_delete  = true
    source_image = var.image
    disk_size_gb = var.boot_disk_size
    disk_type    = var.boot_disk_type
  }

  # Optional additional disk
  dynamic "disk" {
    for_each = var.attach_disk ? [1] : []
    content {
      source      = var.disk_name
      auto_delete = false
      boot        = false
    }
  }

  network_interface {
    subnetwork = var.subnet_self_link

    # Optional public IP
    dynamic "access_config" {
      for_each = var.enable_public_ip ? [1] : []
      content {}
    }
  }

  metadata = var.metadata

  service_account {
    email  = var.service_account
    scopes = ["cloud-platform"]
  }
}