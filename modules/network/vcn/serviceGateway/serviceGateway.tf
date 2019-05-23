resource "oci_core_service_gateway" "-vcn1-sg" {
    compartment_id = "${var.compartment_id}"
    vcn_id = "${var.vcn_id}"
    display_name = "${var.display_name}"
    services {
      service_id = "${var.service_id}"
  }
}