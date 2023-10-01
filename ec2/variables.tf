variable "instance_type" {
  type = string
  description = "Example of inputs can be t2.micro, t2.mini, t3.micro etc"
  default = ""
}

variable "key_name" {}

variable "instance_to_cidr_map" {}

variable "public_subnet_cidr_id_map" {}

variable "public_security_group_ids" {
  type = list(string)
}

variable "deploy_instances" {
  type = bool
}