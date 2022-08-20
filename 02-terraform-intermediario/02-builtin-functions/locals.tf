locals {

  instance_number = lookup(var.instance_number, var.env)


  common_tags = {
    Service     = "Curso Terraform"
    Environment = var.env
    ManagedBy   = "Terraform"
    Owner       = "Matheus de Souza"
  }
}