variable "instance_type" {
  type = string
  description = "Example of inputs can be t2.micro, t2.mini, t3.micro etc"
  default = ""
}

variable "key_name" {}
variable "public_subnet_id" {}
variable "public_security_group_ids" {
  type = list(string)
}