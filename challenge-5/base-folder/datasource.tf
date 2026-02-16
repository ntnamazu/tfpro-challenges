data "aws_subnet" "subnet1" {
  filter {
    name   = "cidr-block"
    values = ["10.77.1.0/24"]
  }
}

data "aws_subnet" "subnet2" {
  filter {
    name   = "cidr-block"
    values = ["10.77.2.0/24"]
  }
}
