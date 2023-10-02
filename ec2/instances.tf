

#Create and bootstrap EC2 in us-east-1
resource "aws_instance" "ec2-with-internet" {
  for_each                    = { for subnet_input in local.pubinst_to_cidr_map : "${subnet_input.instance_number}" => subnet_input if var.deploy_instances == true }
  subnet_id                   = each.value.selected_subnet_id
  ami                         = data.aws_ssm_parameter.linuxami.value
  instance_type               = var.instance_type
  key_name                    = var.key_name
  associate_public_ip_address = true
  vpc_security_group_ids      = var.public_security_group_ids

  tags = merge(
    var.default_tags, {
      Name = "${var.environment}-${var.region_to_name_map[var.region]}"
    }
  )

}
