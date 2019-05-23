/**
  *   If a required variable is defined within the instance.tf file and references a variable, 
  *   it will need to be defined within this file. The variable can be left without any 
  *   key/value pairs, but it would then need to be defined in the "main.tf" file.
  *   An alternative would be to define a default value here to allow it to be omitted when
  *   the module is called. Having the flexibility to define certain variables in different locations
  *   gives added flexibility of creating a template to use for many situations.
  *
  *
  *
  *   Comment out any variable that is not defined within the resource to avoid errors
  *   when planning. The names of the variables are not strict. As long as they match the 
  *   naming convention of the variable called in the resource.
  */
variable "availability_domain" {
  default = "1"
}
variable "compartment_id" {}
variable "shape" {}
variable "subnet_id" {}
variable "display_name" {}
variable "source_id" {}
variable "source_type" {
  default = "image"
}
# variable "instance_create_vnic_details_assign_public_ip" {}
# variable "defined_tags" {}
# variable "instance_create_vnic_details_display_name" {}
# variable "freeform_tags" {}
# variable "instance_create_vnic_details_hostname_label" {}
# variable "instance_create_vnic_details_private_ip" {}
# variable "instance_create_vnic_details_skip_source_dest_check" {}
# variable "defined_tags" {}
# variable "extended_metadata" {}
# variable "fault_domain" {}
# variable "freeform_tags" {}
# variable "hostname_label" {}
# variable "ipxe_script" {}
# variable "is_pv_encryption_in_transit_enabled" {}
# variable "user_data" {}
# variable "boot_volume_size_in_gbs" {}
# variable "kms_key_id" {}
# variable "preserve_boot_volume" {
#   default = false
# }
