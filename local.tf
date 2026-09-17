locals {
  #when you want to concatinate multiple values together
  name_prefix = "${var.project_name}-${var.environment}"
  #gopal-project-dev
  #you can use local block for named expression
  project_tags = {
    Name        = local.name_prefix
    Environment = var.environment
    Project     = var.project_name
    Managedby   = "Terraform"
  }
}