variable "billing_account" {
  type = string
}

variable "region" {
  type = string
}

variable "project_id" {}
variable "project_name" {}

variable "org_id" {
  description = "GCP Organization ID"
  type        = string
}