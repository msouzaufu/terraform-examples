
resource "aws_instance" "web" {
  count = local.instance_number <= 0 ? 0 : local.instance_number

  ami           = var.instance_ami
  instance_type = lookup(var.instance_type, var.env)

  tags = {
    Name = "Remote State"
    Env  = "dev"
  }
}