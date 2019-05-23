resource "oci_database_autonomous_database" "_autonomous_database" {
    admin_password = "${var.admin_password}"
    compartment_id = "${var.compartment_id}"
    cpu_core_count = "${var.cpu_core_count}"
    data_storage_size_in_tbs = "${var.data_storage_size_in_tbs}"
    db_name = "${var.db_name}"

    #Optional
    # defined_tags = {"Operations.CostCenter"= "42"}
    # display_name = "${var.autonomous_database_display_name}"
    # freeform_tags = {"Department"= "Finance"}
    # license_model = "${var.autonomous_database_license_model}"
}