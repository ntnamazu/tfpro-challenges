data "aws_ami" "ubuntu" {
  # executable_users = ["self"]
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "name"
    values = ["*/ubuntu-noble-24.04-amd64-server-20250530"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "this" {
  ami                  = data.aws_ami.ubuntu.id
  instance_type        = "t2.micro"
  iam_instance_profile = var.iam_instance_profile_name
}
