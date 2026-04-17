module "folders" {
  source = "../modules/folders"

  org_id  = var.org_id
  folders = local.folders
}

module "projects" {
  source = "../modules/projects"

  projects        = local.projects
  folder_ids      = module.folders.folder_ids
  billing_account = var.billing_account
  random_suffix   = random_id.id.hex
}