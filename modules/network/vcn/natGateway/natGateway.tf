resource "oci_core_nat_gateway" "-vcn1-natg" {
    compartment_id = "${var.compartment_id}"
    vcn_id = "${var.vcn_id}"
    display_name = "${var.display_name}"
} 
