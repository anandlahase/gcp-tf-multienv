module "dev_project" {
  source          = "../../modules/project"
  project_id      = "cloudtech-dev-492705"
  project_name    = "cloudtech-dev"
  billing_account = var.billing_account
  org_id          = var.org_id
}

module "network" {
  source     = "../../modules/network"
  project_id = module.dev_project.project_id
  env        = "dev"
  region     = var.region
}

module "disk" {
  source = "../../modules/vm_disk"

  disk_name = "dev-data-disk"
  disk_size = 50
  zone      = var.zone
  env       = "dev"
}

module "vm_template" {
  source = "../../modules/vm_template"

  env               = "dev"
  region            = var.region
  machine_type      = "e2-medium"
  subnet_self_link  = module.network.subnet_self_link

  enable_public_ip  = false
  attach_disk       = true
  disk_name         = module.disk.disk_name

  service_account   = var.service_account

  tags = ["http-server"]

  metadata = {
    startup-script = <<-EOT
      #!/bin/bash
      apt update
      apt install -y nginx
      systemctl start nginx
    EOT
  }
}