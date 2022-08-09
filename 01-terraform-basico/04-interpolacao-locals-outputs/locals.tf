locals {
  common_tags = {
    Service     = "Curso Terraform"
    Environment = var.environment
    ManagedBy   = "Terraform"
    Owner       = "Matheus de Souza"
  }
  file_name = "ips.json"
}