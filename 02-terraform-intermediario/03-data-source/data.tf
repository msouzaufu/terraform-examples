data "aws_ami" "ubuntu" {
  owners = ["amazon"]
  most_recent = true
  name_regex = "Ubuntu"

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

}