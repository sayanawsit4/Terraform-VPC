data "template_file" "bastion_public_key" {
  template = "${file("~/.ssh/id_rsa.pub")}"
}

# AWS
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["self"]

  filter {
    name   = "name"
    values = ["webapp-image"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  /* filter {
    name   = "owner-alias"
    values = ["amazon"]
  }*/
}
