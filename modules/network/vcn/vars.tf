variable "compartment_id" {}

variable "cidr_block" {
  default = "10.240.0.0/16"
}

variable "display_name" {}


# defined_tags - (Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see Resource Tags. Example: {"Operations.CostCenter": "42"}
# variable "defined_tags" {}


# dns_label - (Optional) A DNS label for the VCN, used in conjunction with the VNIC's hostname and subnet's DNS label to form a fully qualified domain name (FQDN) for each VNIC within this subnet (for example, bminstance-1.subnet123.vcn1.oraclevcn.com). Not required to be unique, but it's a best practice to set unique DNS labels for VCNs in your tenancy. Must be an alphanumeric string that begins with a letter. The value cannot be changed.
variable "dns_label" {
  default = ""
}


# freeform_tags - (Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see Resource Tags. Example: {"Department": "Finance"}
# variable "freeform_tags" {}