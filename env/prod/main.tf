module "prod_project" {
  source          = "../../modules/project"
  project_id      = "cloudtech-prod-project"
  project_name    = "Prod Project"
  billing_account = var.billing_account
  folder_id       = var.prod_folder_id
}

module "network" {
  source     = "../../modules/network"
  project_id = module.prod_project.project_id
  env        = "prod"
}