resource "oci_identity_policy" "AustinHubUsers" {
  name           = "AustinHubUsersAccessPolicy"
  description    = "Policy to grant users rights in the AustinHub compartment"
  compartment_id = "${oci_identity_compartment.AustinHub.id}"

  statements = [
      "Allow group AustinHubUser to manage instance-family in compartment AustinHub",
      "Allow group AustinHubUser to manage volume-family in compartment AustinHub",
      "Allow group AustinHubUser to manage virtual-network-family in compartment AustinHub",
      "Allow group AustinHubUser to manage db-systems in compartment AustinHub",
      "Allow group AustinHubUser to manage file-systems in compartment AustinHub",
      "Allow group AustinHubUser to manage buckets in compartment AustinHub",
      "Allow group AustinHubUser to use streams in compartment AustinHub",
      "Allow group AustinHubUser to manage autonomous-transaction-processing-family in compartment AustinHub",
  ]

  depends_on = ["oci_identity_group.AustinHubUsers"]
}
