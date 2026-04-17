resource "google_folder" "folders" {
  for_each     = var.folders
  display_name = each.value
  parent       = "organizations/${var.org_id}"
}