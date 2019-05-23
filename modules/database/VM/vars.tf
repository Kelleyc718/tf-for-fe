variable "vm_db_compartment_id" {}

variable "vm_db_tenancy_id" {}

variable "vm_db_subnet_id" {}

variable "vm_db_availability_domain" {}

variable "vm_db_database_edition" {}

variable "vm_db_admin_password" {}

variable "vm_db_ssh_public_keys" {
  type = "list"
}

variable "vm_db_shape" {}

variable "vm_db_hostname" {
  default = "Host"
}

#1 CPU Core
variable "vm_db_cpu_core_count" {
  default = "1"
}

#1.6 TB of Storage
variable "vm_db_data_storage_size_in_gb" {
  default = "1600"
}

variable "vm_db_version" {}

variable "vm_db_node_count" {}

variable "vm_db_name" {}
