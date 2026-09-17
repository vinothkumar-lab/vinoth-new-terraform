resource "aws_route_table" "custom_rtb" {
  vpc_id = aws_vpc.web_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }



  tags = {
    Name = "${local.name_prefix}-custom-rtb"
  }
}

#all the public subnet need to assoicate with the custom rtb
resource "aws_route_table_association" "custom_rtb_associate" {
  for_each       = aws_subnet.web_subnet
  subnet_id      = each.value.id
  route_table_id = aws_route_table.custom_rtb.id
}