resource "oci_core_vcn" "vcn" {
    #Required
    cidr_block = "${var.cidr_block}"
    compartment_id = "${var.compartment_id}"
    display_name = "${var.display_name}"

    #Optional
    #Updatable 
    # defined_tags = {"Operations.CostCenter"= "42"}
    dns_label = "${var.dns_label}"
    # freeform_tags = {"Department"= "Finance"}
}