resource "oci_core_route_table" "_rt" {
  compartment_id = "${var.compartment_id}"
  vcn_id         = "${var.vcn_id}"
  display_name   = "${var.display_name}"

  route_rules {
    destination = "${var.destination}",
    network_entity_id = "${var.network_entity_id}"
  }
}