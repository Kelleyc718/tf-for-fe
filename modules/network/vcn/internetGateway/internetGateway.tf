resource "oci_core_internet_gateway" "_ig" {
  compartment_id = "${var.compartment_id}"
  display_name   = "${var.display_name}"
  vcn_id         = "${var.vcn_id}"
}
