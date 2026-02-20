# resource "aws_instance" "this" {
#   for_each = {
#     for subnet in [
#       data.aws_subnet.subnet1,
#       data.aws_subnet.subnet2
#   ] : subnet.id => subnet }

#   subnet_id = each.value.id
#   # ami           = "resolve:ssm:/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
#   ami           = "ami-0c1fe732b5494dc14"
#   instance_type = "t3.micro"
# }
