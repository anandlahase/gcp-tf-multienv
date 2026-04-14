variable "disk_name" {
  description = "Name of the disk"
  type        = string
}

variable "disk_type" {
  description = "Disk type"
  type        = string
  default     = "pd-standard"
}

variable "disk_size" {
  description = "Disk size in GB"
  type        = number
  default     = 50
}

variable "zone" {
  description = "Zone where disk will be created"
  type        = string
}

variable "env" {
  description = "Environment name"
  type        = string
}