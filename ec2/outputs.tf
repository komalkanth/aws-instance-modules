/* output "private_subnet_cidr_id_map" {
  value = var.public_subnet_cidr_id_map
  } */

output "pubinst_to_cidr_map" {
  value = local.pubinst_to_cidr_map
}