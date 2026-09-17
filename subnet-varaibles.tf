variable "public_subnet" { #student
  description = "subnet configuration"
  type = map(object({
    cidr_block        = string #age
    availability_zone = string #mar4xobtain
    subnet_type       = string #subject

  }))
  default = {
    "subnet1" = {                       #student1
      cidr_block        = "10.0.1.0/24" #instance size
      availability_zone = "us-east-1a"  #az
      subnet_type       = "public"      #subnet1
    }
    "subnet2" = {
      cidr_block        = "10.0.2.0/24"
      availability_zone = "us-east-1b"
      subnet_type       = "public"
    }
    "subnet3" = {
      cidr_block        = "10.0.3.0/24"
      availability_zone = "us-east-1c"
      subnet_type       = "public"
    }

  }
}