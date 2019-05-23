resource "oci_load_balancer_backend" "_be" {
  load_balancer_id = "${var.load_balancer_id}"
  backendset_name  = "${var.backend_set_name}"
  ip_address       = "${var.ip_address}"
  port             = "${var.port}"
  backup           = "${var.backup}"
  drain            = "${var.drain}"
  offline          = "${var.offline}"
  weight           = "${var.weight}"
}
