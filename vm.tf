resource "aws_instance" "web_vm" {
  for_each               = var.instance
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = each.value.instance_type
  subnet_id              = aws_subnet.web_subnet[each.value.subnet_key].id
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  associate_public_ip_address = true
  user_data                   = file("${path.module}/app.sh")
  #path.module is an meta argument in terraform which will look for any file in the current directory
  #user_data = C:\Users\gopal\OneDrive\Desktop\terraform-project\path.sh
  tags = {
    Name        = "${local.name_prefix}-${each.key}"
    Project     = var.project_name
    Environment = var.environment
  }
}

#once our instance get create we want to display some values
#instance id public ip of the instance 
output "instance_details" {
  description = "show the instance id public ip and private ip"
  value = {
    for name, instance in aws_instance.web_vm :
    name => {
      instance_id = instance.id
      public_ip   = instance.public_ip
      private_ip  = instance.private_ip
    }
  }
}

/*output "public_ip" {
  value = aws_instance.web_vm.public_ip
}*/