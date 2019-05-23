resource "oci_objectstorage_bucket" "_objS" {
  compartment_id = "${var.compartment_id}"
  name           = "${var.name}"
  namespace      = "${var.namespace}"
}
