resource "oci_load_balancer_listener" "_lb_listener" {
  load_balancer_id         = "${var.load_balancer_id}"
  name                     = "${var.name}"
  default_backend_set_name = "${var.backend_set_name}"
  port                     = "${var.port}"
  protocol                 = "${var.protocol}"
}
