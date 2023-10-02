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

variable "environment" {}

variable "region" {}

variable "organization" {}

variable "region_to_name_map" {
  type = map(any)
  default = {
    us-east-1      = "usea1"
    us-east-2      = "usea2"
    us-west-2      = "uswe2"
    ap-south-1     = "apso1"
    ap-southeast-1 = "apse1"
  }
}

variable "default_tags" {}