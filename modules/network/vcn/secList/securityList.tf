resource "oci_core_security_list" "_seclist" {
  compartment_id = "${var.compartment_id}"

  vcn_id = "${var.vcn_id}"

  display_name = "${var.display_name}"

  egress_security_rules = [
    {
      destination = "${var.destination}"
      protocol    = "6"
    },
  ]

  ingress_security_rules = [
    {
      tcp_options {
        "max" = 22
        "min" = 22
      }

      protocol = "6"

      source = "${var.source}"
    },
    {
      tcp_options {
        "max" = 3389
        "min" = 3389
      }

      protocol = "6"

      source = "${var.source}"
    },
  ]
}
