data "aws_ssm_parameter" "linuxami" {
  name     = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}

data "aws_key_pair" "key-1" {
  key_name           = "general-usea1-key-1"
}

data "aws_key_pair" "key-2" {
  key_name           = "general-usea1-key-2"
}

