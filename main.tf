resource "aws_ec2_transit_gateway" "tgw" {
  description = "roboshop-tgw"
  tags = {
    Name = "roboshop-tgw-${var.ENV}"
  }
}

resource "aws_ec2_transit_gateway_connect" "tgw-attach" {
  subnet_ids         = data.aws_subnet_ids.default_vpc.ids
  transit_gateway_id = aws_ec2_transit_gateway.tgw.id
  vpc_id             = var.DEFAULT_VPC_ID
  tags = {
    Name = "roboshop-tgw-attach-${var.ENV}"
  }
}