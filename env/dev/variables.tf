variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
}

variable "vpc_name" {
  description = "Name of VPC"
  type        = string
}

variable "subnet_cidr" {
  description = "CIDR range for subnet"
  type        = string
}