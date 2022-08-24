locals {

  instance_number = lookup(var.instance_number, var.env)

  file_ext    = "zip"
  object_name = "my-file-generated-from-template"

  common_tags = {
    Service     = "Curso Terraform"
    Environment = var.env
    ManagedBy   = "Terraform"
    Owner       = "Matheus de Souza"
  }
}