variable "load_balancer_id" {}
variable "backend_set_name" {}
variable "ip_address" {}

variable "port" {
  default = "80"
}

variable "backup" {
  default = false
}

variable "drain" {
  default = false
}

variable "offline" {
  default = false
}

variable "weight" {
  default = "1"
}
