resource "oci_core_subnet" "subnet" {
  availability_domain = "${var.availability_domain}"
  compartment_id      = "${var.compartment_id}"
  cidr_block          = "${var.subnet_cidr}"
  display_name        = "${var.display_name}"
  vcn_id              = "${var.vcn_id}"
  route_table_id      = "${var.route_table_id}"
  security_list_ids   = ["${var.security_list_id}"]
}
