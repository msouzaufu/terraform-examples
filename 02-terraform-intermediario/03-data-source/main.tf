terraform {
  required_version = ">=1.2.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.24.0"
    }

  }


}

provider "aws" {
  region = "us-east-1"
}