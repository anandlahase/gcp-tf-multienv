resource "google_project" "projects" {
  for_each = var.projects

  name            = each.value.name
  project_id      = "${each.value.name}-${var.random_suffix}"
  folder_id       = var.folder_ids[each.value.folder]
  billing_account = var.billing_account
  deletion_policy = "DELETE"
}