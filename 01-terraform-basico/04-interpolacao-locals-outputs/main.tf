terraform {
  required_version = "1.2.6"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.24.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.3.2"
    }
  }
}

provider "aws" {
  region = var.aws_region
}


