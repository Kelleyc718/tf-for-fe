resource "oci_database_db_system" "_vm_db" {
  #Required
  availability_domain = "${var.vm_db_availability_domain}"
  compartment_id      = "${var.vm_db_compartment_id}"
  database_edition    = "${var.vm_db_database_edition}"

  db_home {
    #Required
    database {
      #Required
      admin_password = "${var.vm_db_admin_password}"
      db_name = "${var.vm_db_name}"

      /** Optional
            * backup_id = "${oci_database_backup.test_backup.id}"
            * backup_tde_password = "${var.db_system_db_home_database_backup_tde_password}"
            * character_set = "${var.db_system_db_home_database_character_set}"
            * db_backup_config {
            *     #Optional
            *     auto_backup_enabled = "${var.db_system_db_home_database_db_backup_config_auto_backup_enabled}"
            * }
          
            * db_workload = "${var.db_system_db_home_database_db_workload}"
            * defined_tags = "${var.db_system_db_home_database_defined_tags}"
            * freeform_tags = "${var.db_system_db_home_database_freeform_tags}"
            * ncharacter_set = "${var.db_system_db_home_database_ncharacter_set}"
            * pdb_name = "${var.db_system_db_home_database_pdb_name}"
            **/
    }

    # #Optional
     db_version = "${var.vm_db_version}"
    # display_name = "${var.db_system_db_home_display_name}"
  }

  hostname = "${var.vm_db_hostname}"
  shape    = "${var.vm_db_shape}"

  ssh_public_keys         = "${var.vm_db_ssh_public_keys}"
  subnet_id               = "${var.vm_db_subnet_id}"
  cpu_core_count          = "${var.vm_db_cpu_core_count}"
  data_storage_size_in_gb = "${var.vm_db_data_storage_size_in_gb}"

  /** Optional
    * backup_subnet_id = "${oci_database_backup_subnet.test_backup_subnet.id}"
    * cluster_name = "${var.db_system_cluster_name}"
    * data_storage_percentage = "${var.db_system_data_storage_percentage}"
    * defined_tags = {"Operations.CostCenter"= "42"}
    * disk_redundancy = "${var.db_system_disk_redundancy}"
    * display_name = "${var.db_system_display_name}"
    * domain = "${var.db_system_domain}"
    * freeform_tags = {"Department"= "Finance"}
    * license_model = "${var.db_system_license_model}"
    
    * source = "${var.db_system_source}"
    **/
    node_count = "${var.vm_db_node_count}"
}
