output "backendset_name" {
  value = "${oci_load_balancer_backend._be.backendset_name}"
}

output "backend_id" {
  value = "${oci_load_balancer_backend._be.id}"
}

output "backend_backup" {
  value = "${oci_load_balancer_backend._be.backup}"
}

output "backend_drain" {
  value = "${oci_load_balancer_backend._be.drain}"
}

output "backend_ip_address" {
  value = "${oci_load_balancer_backend._be.ip_address}"
}

output "backend_name" {
  value = "${oci_load_balancer_backend._be.name}"
}

output "backend_offline" {
  value = "${oci_load_balancer_backend._be.offline}"
}

output "backend_port" {
  value = "${oci_load_balancer_backend._be.port}"
}

output "backend_weight" {
  value = "${oci_load_balancer_backend._be.weight}"
}
