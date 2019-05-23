variable "route_table_id" {}
variable "vcn_id" {}

variable "display_name" {}

variable "prohibit_public_ip_on_vnic" {
  default = false
}

variable "security_list_id" {}

variable "subnet_cidr" {
  default = "10.0.0.0/24"
}

variable "compartment_id" {}
variable "availability_domain" {}

variable "dns_label" {
  default = ""
}
