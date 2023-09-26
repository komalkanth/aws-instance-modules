
#Create and bootstrap EC2 in us-east-1
resource "aws_instance" "ec2-with-internet" {
  ami                         = data.aws_ssm_parameter.linuxami.value
  instance_type               = var.instance_type
  key_name                    = data.aws_key_pair.key-1.key_name
  associate_public_ip_address = true
  vpc_security_group_ids      = var.public_security_group_ids
  subnet_id                   = var.public_subnet_id

  tags = {
    Name = "jenkins_master_tf"
  }

}
