data "aws_subnets" "from_base_vpc" {
  filter {
    name = "tag:Name"
    values = [
      "app-subnet",
      "central-subnet",
      "database-subnet"
    ]
  }
}

data "aws_subnet" "from_base_vpc" {
  for_each = toset(data.aws_subnets.from_base_vpc.ids)

  id = each.value
}

data "aws_vpc" "from_base_vpc" {
  filter {
    name   = "tag:Name"
    values = ["central-vpc"]
  }
}
