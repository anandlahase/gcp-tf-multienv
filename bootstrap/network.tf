module "network" {
  source = "../modules/network"

  project_id = module.projects.project_ids["host_vpc"]
  region     = "asia-south1"

  subnets = {
    dev  = "10.10.0.0/24"
    qa   = "10.20.0.0/24"
    prod = "10.30.0.0/24"
  }
}