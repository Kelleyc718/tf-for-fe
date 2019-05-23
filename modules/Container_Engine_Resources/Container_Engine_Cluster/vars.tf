variable "compartment_id" {}

variable "vcn_id" {
  
}

variable "cluster_kubernetes_version" {
    default = "v1.14"
}
variable "cluster_name" {
    default = "kubeCluster"
}

variable "cluster_options_add_ons_is_kubernetes_dashboard_enabled" {
    default = true
}
variable "cluster_options_add_ons_is_tiller_enabled" {
    default = true
}

# variable "cluster_options_kubernetes_network_config_pods_cidr" {}

# variable "cluster_options_kubernetes_network_config_services_cidr" {}
variable "subnet" {
}

variable "subnet2" {}





