variable "instance" {
  description = "ec2 instance to be created"
  type = map(object({
    instance_type    = string
    availablity_zone = string
    subnet_key       = string #this subnet key is an pre defined varaible in terraform which you can use to pickup your subnet
  }))
  default = {
    "web1" = {
      instance_type    = "t3.micro"
      availablity_zone = "us-east-1a"
      subnet_key       = "subnet1"
    }
    "web2" = {
      instance_type    = "t3.medium"
      availablity_zone = "us-east-1b"
      subnet_key       = "subnet2"
    }

  }
}