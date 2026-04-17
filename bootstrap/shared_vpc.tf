module "shared_vpc" {
  source = "../modules/shared_vpc"

  host_project_id = module.projects.project_ids["host_vpc"]

  service_projects = {
    dev  = module.projects.project_ids["dev"]
    qa   = module.projects.project_ids["qa"]
    prod = module.projects.project_ids["prod"]
  }
}