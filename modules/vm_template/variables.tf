variable "env" {
  type = string
}

variable "region" {
  type = string
}

variable "machine_type" {
  type    = string
  default = "e2-medium"
}

variable "image" {
  type    = string
  default = "debian-cloud/debian-11"
}

variable "boot_disk_size" {
  type    = number
  default = 20
}

variable "boot_disk_type" {
  type    = string
  default = "pd-standard"
}

variable "subnet_self_link" {
  type = string
}

variable "enable_public_ip" {
  type    = bool
  default = false
}

variable "attach_disk" {
  type    = bool
  default = false
}

variable "disk_name" {
  type    = string
  default = null
}

variable "tags" {
  type    = list(string)
  default = ["http-server"]
}

variable "labels" {
  type    = map(string)
  default = {}
}

variable "metadata" {
  type    = map(string)
  default = {}
}

variable "service_account" {
  type = string
}