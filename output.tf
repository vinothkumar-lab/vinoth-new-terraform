output "vpc_id" {
  description = "id of the vpc"
  value       = aws_vpc.web_vpc.id
}

output "internet_gateway_id" {
  description = "internet gateway id"
  value       = aws_internet_gateway.igw.id
}

output "private_route_table" {
  description = "private route table"
  value       = aws_route_table.custom_rtb.id
}
#we want to output the subnet
output "public_subnet" {
  description = "ids of all public subnet"
  value = {
    for name, subnet in aws_subnet.web_subnet :
    name => {
      id                = subnet.id
      cidr_block        = subnet.cidr_block
      availability_zone = subnet.availability_zone
    }
  }
}

output "public_subnet1" {
  description = "ids of all public subnet"
  value       = aws_subnet.web_subnet["subnet1"].id
}

