terraform {
  backend "s3" {
    bucket = "terraform-aws-bucket-vinod1" #change it to your bucket name
    key    = "dev/gopal.tfstate" #change my name to your name
    region = "us-east-1"
    use_lockfile = true
    encrypt = true
  }
}
