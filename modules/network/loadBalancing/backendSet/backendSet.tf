resource "oci_load_balancer_backend_set" "_bes1" {
  name             = "${var.name}"
  load_balancer_id = "${var.load_balancer_id}"
  policy           = "${var.policy}"

  health_checker {
    port                = "80"
    protocol            = "HTTP"
    response_body_regex = ".*"
    url_path            = "/"
  }
}
