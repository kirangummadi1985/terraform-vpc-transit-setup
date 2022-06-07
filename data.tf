data "aws_subnet_ids" "default_vpc" {
  vpc_id = var.DEFAULT_VPC_ID
}