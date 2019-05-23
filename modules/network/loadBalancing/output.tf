output "_lb_id" {
  value = "${oci_load_balancer._lb.id}"
}

output "_lb_ip_address" {
  value = "${oci_load_balancer._lb.ip_addresses}"
}
