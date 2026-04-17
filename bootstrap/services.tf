resource "google_project_service" "cloudbuild" {
  project = module.projects.project_ids["cicd"]
  service = "cloudbuild.googleapis.com"
}