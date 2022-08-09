variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}


variable "environment" {
  type        = string
  description = ""
  default     = "dev"
}

variable "instance_tags" {
  type        = map(string)
  description = ""
  default = {
    Name    = "Ubuntu"
    Project = "Curso AWS com Terraform"
  }
}
