variable "projects" {
  type = map(object({
    name   = string
    folder = string
  }))
}

variable "folder_ids" {}
variable "billing_account" {}
variable "random_suffix" {}