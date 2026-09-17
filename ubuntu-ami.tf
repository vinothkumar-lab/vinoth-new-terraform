data "aws_ami" "ubuntu" {

  most_recent = true #this will get the recent image

  owners = ["099720109477"] #cannonical

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-resolute-26.04-amd64-server-20260604"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

output "ubuntu_image_id" {
  value = data.aws_ami.ubuntu.id
}