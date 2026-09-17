resource "aws_vpc" "web_vpc" {
  #using terraform we are create a resources
  #when i create a resource 
  #aws_vpc is the name of the resources which we are creating
  #this is an refrence block user define used in terraform.tfsate file
  cidr_block = var.aws_vpc_cidr
  tags       = local.project_tags
}
