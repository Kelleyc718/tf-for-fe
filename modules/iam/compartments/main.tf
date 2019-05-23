# variable "defined_tags" {} 
variable "compartment_description" {
  default = "_compartment"
}

# variable "freeform_tags" {}
# variable "id" {}
# variable "inactive_state" {}
variable "compartment_name" {
  default = "_compartment"
}

# variable "state" {}

resource "oci_identity_compartment" "_compartment" {
  compartment_name        = "${var.compartment_name}"
  compartment_description = ["${var.compartment_description}"]
}
