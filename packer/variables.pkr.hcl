variable "project_name" {
  type = string
  default = "shopping"
}

variable "project_env" {
  type = string
  default = "production"
}

locals {
  image-timestamp = "${formatdate("DD-MM-YYYY-hh-mm", timestamp())}"
  image-name = "${var.project_name}-${var.project_env}-${local.image-timestamp}"
}

variable "ami" {
  #default = "ami-02e94b011299ef128"
  type = string
}
