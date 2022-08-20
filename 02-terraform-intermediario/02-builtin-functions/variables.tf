variable "env" {}

variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}

variable "instance_ami" {
  type        = string
  description = ""
  default     = "ami-03c3a7e4263fd998c"

  validation {
    condition = lenght(var.ami) > 4 && substr(var.ami, 0, 4) == "ami-"
    error_message = "The instance ami value must be a valid AMI id, starting with \"ami-\"."
  }
}

variable "instance_type" {
  type        = object({
    dev = string
    prod = string
  })
  description = ""
  default     = {
    dev = "t3.micro"
    prod = "t3.medium"
  }
}


variable "instance_number" {
  type = object({
    dev = number
    prod = number
  })
  description = "Number of instance create"
  default = {
    dev = 1
    prod = 3
  }

}