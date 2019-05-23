variable "compartment_id" {}
variable "vcn_id" {}
variable "display_name" {
  default = "_rt"
}

variable "destination" {
  default = "0.0.0.0/0"
}

variable "network_entity_id" {}