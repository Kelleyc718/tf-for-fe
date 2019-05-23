variable "compartment_id" {}
variable "vcn_id" {}

variable "display_name" {
  default = "_sl"
}

variable "source" {
  default = "0.0.0.0/0"
}

variable "destination" {
  default = "0.0.0.0/0"
}
