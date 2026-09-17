resource "aws_subnet" "web_subnet" {
  for_each = var.public_subnet #this will get the whole dic subnet1,subnet2,subnet3
  #intialzed with subnet1 ,start with second subnet
  vpc_id = aws_vpc.web_vpc.id #chosse the vpc
  #how to map the vpc id
  cidr_block        = each.value.cidr_block        #subnet1 cidr block 10.0.1.0/24
  availability_zone = each.value.availability_zone #us-east-1a
  tags = {
    Name = "${local.name_prefix}-${each.key}"
    Type = each.value.subnet_type
  }
}
#the scenario is duplicay
