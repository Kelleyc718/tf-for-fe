/** 
**  -- PROD Terraform for hakuna --
**  No guarantees can be made to the capability or accuracy of this Terraform script
**  due to the evolving nature of software development. It is highly recommended that
**  the entire script be reviewed for accuracy prior to being utilized in any 
**  environment, but especially for PRODUCTION or "MISSION CRITICAL" environments. This 
**  script was written for Oracle Cloud Infrastructure and implements OCI-CLI tool that utilizes
**  the REST API to make changes to environments. As a result, this script can become deprecated
**  or introduce breaking changes at any time should any of the tools receive updates.
**  
**  As always, please reference the documentation for any support issues that may arise after
**  the script has initialized successfully.
**/

/**
*
*
*
*   Configuration of PROD-ASH-VCN - START
*
*
*
**/

## Virtual Cloud Network - VCN ##

module "createVCN" {
  # Absolute path from root
  source = "./modules/network/vcn"

  # Can be omitted which defaults or can be provided
  display_name = "PROD-HAKUNA-VCN"

  # Supplied from the root vars.tf file
  compartment_id = "${var.compartment_id}"


  /** 
  *  (Optional) (Updatable) Defined tags for this resource. 
  *  Each key is predefined and scoped to a namespace. 
  *  For more information, see Resource Tags. 
  *  Example: {"Operations.CostCenter": "42"}
  **/
  # defined_tags = ""

  /**  (Optional) A DNS label for the VCN, 
  *    used in conjunction with the VNIC's hostname and 
  *    subnet's DNS label to form a fully qualified domain name (FQDN) 
  *    for each VNIC within this subnet 
  *    (for example, bminstance-1.subnet123.vcn1.oraclevcn.com). 
  *    Not required to be unique, but it's a best practice to set unique DNS labels for VCNs in your tenancy. 
  *    Must be an alphanumeric string that begins with a letter. 
  *    The value cannot be changed.
  **/
  # dns_label

  /*  (Optional) (Updatable) 
  *     Free-form tags for this resource. 
  *     Each tag is a simple key-value pair with no predefined name, type, or namespace. 
  *     For more information, see Resource Tags. 
  *     Example: {"Department": "Finance"}
  **/
  # freeform_tags = ""

}

## Internet Gateway - START ##

module "createIG" {
  source         = "./modules/network/vcn/internetGateway/"
  display_name   = "PROD-HAKUNA-IG"
  compartment_id = "${var.compartment_id}"
  vcn_id         = "${module.createVCN.vcn_id}"
}

## Internet Gateway - END ##

## Route Table - START ##

module "createRT" {
  source         = "./modules/network/vcn/routeTable/"
  display_name   = "PROD-HAKUNA-RT"
  compartment_id = "${var.compartment_id}"
  vcn_id         = "${module.createVCN.vcn_id}"
  network_entity_id = "${module.createIG.ig_id}"
}

## Route Table - END ##

## Security List - START ##
module "createWorkerSL" {
  /* Absolute path from root */
  source = "./modules/network/vcn/secList/"

  /* Can be omitted which defaults or can be provided */
  display_name = "PROD-HAKUNA"

  /* Supplied from the root vars.tf file */
  compartment_id = "${var.compartment_id}"

  /* Supplied by the VCN Module */
  vcn_id = "${module.createVCN.vcn_id}"
}

module "createLoadBalancerSL" {
  /* Absolute path from root */
  source = "./modules/network/vcn/secList/"

  /* Can be omitted which defaults or can be provided */
  display_name = "PROD-HAKUNA"

  /* Supplied from the root vars.tf file */
  compartment_id = "${var.compartment_id}"

  /* Supplied by the VCN Module */
  vcn_id = "${module.createVCN.vcn_id}"
}

## Security List - END ##


## SUBNET WORKERS - START ##
module "createWorkerSubnet" {
  source              = "./modules/network/vcn/subnet/"
  display_name        = "PROD-SUBNET-HAKUNA-WORKER-A"
  subnet_cidr         = "10.0.0.0/24"
  availability_domain = "${lookup(data.oci_identity_availability_domains.ADs.availability_domains[var.AD - 1],"name")}"
  compartment_id      = "${var.compartment_id}"
  vcn_id              = "${module.createVCN.vcn_id}"
  route_table_id      = "${module.createRT.rt_id}"
  security_list_id    = "${module.createWorkerSL.sec_list}"
}

module "createWorkerSubnet2" {
  source              = "./modules/network/vcn/subnet/"
  display_name        = "PROD-SUBNET-HAKUNA-WORKER-2"
  subnet_cidr         = "10.0.1.0/24"
  availability_domain = "${lookup(data.oci_identity_availability_domains.ADs.availability_domains[var.AD - 1],"name")}"
  compartment_id      = "${var.compartment_id}"
  vcn_id              = "${module.createVCN.vcn_id}"
  route_table_id      = "${module.createRT.rt_id}"
  security_list_id    = "${module.createWorkerSL.sec_list}"
}

module "createWorkerSubnet3" {
  source              = "./modules/network/vcn/subnet/"
  display_name        = "PROD-SUBNET-HAKUNA-WORKER-3"
  subnet_cidr         = "10.0.2.0/24"
  availability_domain = "${lookup(data.oci_identity_availability_domains.ADs.availability_domains[var.AD - 1],"name")}"
  compartment_id      = "${var.compartment_id}"
  vcn_id              = "${module.createVCN.vcn_id}"
  route_table_id      = "${module.createRT.rt_id}"
  security_list_id    = "${module.createWorkerSL.sec_list}"
}

## SUBNET WORKERS - END ##

/**
*
*
*
* Configuration of Compute Instance for PROD-ASH-AD1 - START
*
*
*
**/


## LB SUBNET - START ##
module "createLBSubnet" {
  source              = "./modules/network/vcn/subnet/"
  display_name        = "PROD-SUBNET-HAKUNA-LB"
  subnet_cidr         = "10.0.3.0/24"
  availability_domain = "${lookup(data.oci_identity_availability_domains.ADs.availability_domains[var.AD],"name")}"
  compartment_id      = "${var.compartment_id}"
  vcn_id              = "${module.createVCN.vcn_id}"
  route_table_id      = "${module.createRT.rt_id}"
  security_list_id    = "${module.createLoadBalancerSL.sec_list}"
}

module "createLBSubnet2" {
  source              = "./modules/network/vcn/subnet/"
  display_name        = "PROD-SUBNET-HAKUNA-LB-2"
  subnet_cidr         = "10.0.4.0/24"
  availability_domain = "${lookup(data.oci_identity_availability_domains.ADs.availability_domains[var.AD - 1],"name")}"
  compartment_id      = "${var.compartment_id}"
  vcn_id              = "${module.createVCN.vcn_id}"
  route_table_id      = "${module.createRT.rt_id}"
  security_list_id    = "${module.createLoadBalancerSL.sec_list}"
}


module "createCluster" {
    source  =   "./modules/Container_Engine_Resources/Container_Engine_Cluster"
    compartment_id = "${var.compartment_id}"
    vcn_id = "${module.createVCN.vcn_id}"
    
    subnet = "${module.createLBSubnet.subnet_id}"
    subnet2 = "${module.createLBSubnet2.subnet_id}"
}

/***************************************
****************************************
****************************************
*************** END ********************
****************************************
****************************************
***************************************/