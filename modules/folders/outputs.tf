output "folder_ids" {
  value = {
    for k, v in google_folder.folders :
    k => v.name
  }
}