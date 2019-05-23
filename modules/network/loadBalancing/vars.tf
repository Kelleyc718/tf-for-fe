variable "compartment_id" {}

variable "display_name" {
  default = "_lb"
}

variable "shape" {
  default = "100Mbps"
}

variable "lb_subnet_ids" {
  default = []
}
