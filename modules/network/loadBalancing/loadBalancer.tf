resource "oci_load_balancer" "_lb" {
  compartment_id = "${var.compartment_id}"
  display_name   = "${var.display_name}"
  shape          = "${var.shape}"
  subnet_ids     = ["${var.lb_subnet_ids}"]
}
