module "dev_project" {
  source          = "../../modules/project"
  project_id      = "cloudtech-dev-492705 "
  project_name    = "Dev Project"
  billing_account = var.billing_account
  folder_id       = var.dev_folder_id
}

module "network" {
  source     = "../../modules/network"
  project_id = module.dev_project.project_id
  env        = "dev"
  region     = var.region
}