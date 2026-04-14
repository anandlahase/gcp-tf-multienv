resource "google_project_iam_member" "admin" {
  project = var.project_id
  role    = "roles/viewer"
  member  = var.user
}