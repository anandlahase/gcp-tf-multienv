module "tf_state" {
  source = "../modules/tf_state_bucket"

  project_id  = module.projects.project_ids["tf_state"]
  bucket_name = "cloudtech-tf-state-${random_id.id.hex}"
}