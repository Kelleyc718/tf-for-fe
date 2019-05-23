resource "oci_containerengine_cluster" "_cluster" {
    #Required
    compartment_id      = "${var.compartment_id}"
    kubernetes_version  = "${var.cluster_kubernetes_version}"
    name                = "${var.cluster_name}"
    vcn_id              = "${var.vcn_id}"

    #Optional
    options {

        #Optional
        # add_ons {

        #     #Optional
        #     is_kubernetes_dashboard_enabled = "${var.cluster_options_add_ons_is_kubernetes_dashboard_enabled}"
        #     is_tiller_enabled = "${var.cluster_options_add_ons_is_tiller_enabled}"
        # }
        # kubernetes_network_config {

        #     #Optional
        #     pods_cidr = "${var.cluster_options_kubernetes_network_config_pods_cidr}"
        #     services_cidr = "${var.cluster_options_kubernetes_network_config_services_cidr}"
        # }
        service_lb_subnet_ids = [ "${var.subnet}", "${var.subnet2}" ]
    }
}


