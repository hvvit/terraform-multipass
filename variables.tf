variable "cluster_name" {
  type = string
}

variable "controller_count" {
  type    = number
  default = 1
}

variable "worker_count" {
  type    = number
  default = 2
}

variable "controller_cpu" {
  type    = number
  default = 2
}

variable "controller_ram" {
  type    = string
  default = "4G"
}

variable "controller_disk_size" {
  type    = string
  default = "25G"
}

variable "worker_cpu" {
  type    = number
  default = 1
}

variable "worker_ram" {
  type    = string
  default = "4g"
}

variable "worker_disk_size" {
  type    = string
  default = "25G"
}

variable "image_name" {
  type    = string
  default = "jammy"
}

variable "cloud_init_path" {
  type    = string
  default = "./cloud-config"
}