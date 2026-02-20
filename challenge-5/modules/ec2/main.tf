resource "aws_instance" "this" {
  for_each = var.subnet_ids

  subnet_id = each.value
  # ami           = "resolve:ssm:/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
  ami           = "ami-0c1fe732b5494dc14"
  instance_type = "t3.micro"
}
