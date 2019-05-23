variable "load_balancer_id" {}

variable "name" {
  default = "http"
}

variable "backend_set_name" {}

variable "port" {
  default = "80"
}

variable "protocol" {
  default = "HTTP"
}
