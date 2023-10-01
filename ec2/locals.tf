locals {
  pubinst_to_cidr_map = flatten([
    for instance_number, subnet_cidr in var.instance_to_cidr_map:  [
      for subnet_name, subnet_map in var.public_subnet_cidr_id_map[0]: {
        "selected_subnet_id" = subnet_map.subnet_id
        "instance_number" = instance_number
      } if subnet_cidr == subnet_map.subnet_cidr_block
    ]
  ])
}