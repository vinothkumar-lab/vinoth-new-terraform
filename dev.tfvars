  #agains the varaible we have provider all the values agains it
#$#varaIble declarion is always required
#we have define default values. 
aws_region = "us-east-1"
aws_vpc_cidr = "10.10.0.0/16"
project_name = "Vinoth-project"
environment = "dev"
instance = {
     web1 = {
      instance_type    = "t2.micro"
      availablity_zone = "us-east-1a"
      subnet_key       = "subnet1"
    }
    web2 = {
      instance_type    = "t2.micro"
      availablity_zone = "us-east-1b"
      subnet_key       = "subnet2"
    }

}
public_subnet = {
    subnet1 = {                       #student1
      cidr_block        = "10.10.1.0/24" #instance size
      availability_zone = "us-east-1a"  #az
      subnet_type       = "public"      #subnet1
    }
    subnet2 = {
      cidr_block        = "10.10.2.0/24"
      availability_zone = "us-east-1b"
      subnet_type       = "public"
    }
    subnet3 = {
      cidr_block        = "10.10.3.0/24"
      availability_zone = "us-east-1c"
      subnet_type       = "public"
    }
}

private_subnet = {
    subnet4 = { #student1
      cidr_block        = "10.10.4.0/24"
      availability_zone = "us-east-1a"
      subnet_type       = "private"
    }
    subnet5 = {
      cidr_block        = "10.10.5.0/24"
      availability_zone = "us-east-1b"
      subnet_type       = "private"
    }
}