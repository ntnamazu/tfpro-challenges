locals {
  sg_data = csvdecode(file("sg.csv"))

  ingress_rule = [for rule in local.sg_data : rule if rule.direction == "in"]

  subnet_dict = { for subnet_id, body in data.aws_subnet.from_base_vpc : body.tags["Name"] => {
    subnet_id  = subnet_id,
    cidr_block = body.cidr_block
  } }

  cidr_block_dict = {
    app        = local.subnet_dict["app-subnet"]["cidr_block"]
    database   = local.subnet_dict["database-subnet"]["cidr_block"]
    monitoring = local.subnet_dict["central-subnet"]["cidr_block"]
    anti-virus = local.subnet_dict["central-subnet"]["cidr_block"]
  }

  ingress_rule_computed = { for index, rule in local.ingress_rule : index => {
    direction  = rule.direction
    protocol   = rule.protocol
    cidr_block = lookup(local.cidr_block_dict, rule.cidr_block, "")
    from_port  = element(split("-", rule.port), 0)
    to_port    = element(split("-", rule.port), -1)
  } }
}
