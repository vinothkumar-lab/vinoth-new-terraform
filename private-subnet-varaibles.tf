variable "private_subnet" { #student
  description = "privsate subnet configuration"
  type = map(object({
    cidr_block        = string #age
    availability_zone = string #mar4xobtain
    subnet_type       = string #subject

  }))
  default = {
    "subnet4" = { #student1
      cidr_block        = "10.0.4.0/24"
      availability_zone = "us-east-1a"
      subnet_type       = "private"
    }
    "subnet5" = {
      cidr_block        = "10.0.5.0/24"
      availability_zone = "us-east-1b"
      subnet_type       = "private"
    }


  }
}