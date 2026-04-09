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