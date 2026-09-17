variable "aws_region" {
  description = "this is the region "
  type        = string
  default     = "us-east-1"
}

variable "aws_vpc_cidr" {
  description = "cidr of vpc"
  type        = string
  default     = "10.0.0.0/16"
}

variable "web_subnet" {
  description = "web subnet cidr"
  type        = string
  default     = "10.0.1.0/24"
}

variable "project_name" {
  description = "name of the project"
  type        = string
  default     = "vinod-project"
}

variable "environment" {
  type    = string
  default = "dev"
}