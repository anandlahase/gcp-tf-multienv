locals {
  folders = {
    platform        = "platform"
    shared_services = "shared-services"
    dev             = "dev"
    qa              = "qa"
    prod            = "prod"
  }

  projects = {
    tf_state = { name = "tf-state-project", folder = "platform" }
    cicd     = { name = "cicd-project", folder = "platform" }
    host_vpc = { name = "host-vpc-project", folder = "shared_services" }
    dev      = { name = "dev-app-project", folder = "dev" }
    qa       = { name = "qa-app-project", folder = "qa" }
    prod     = { name = "prod-app-project", folder = "prod" }
  }
}