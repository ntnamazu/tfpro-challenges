output "subnet_ids" {
  value = { for subnet_id, body in data.aws_subnet.from_base_vpc : body.tags["Name"] => subnet_id }
}

output "filtered_data" {
  value = { for index, rule in local.ingress_rule_computed : index => {
    cidr_block = rule.cidr_block
    from_port  = rule.from_port
    to_port    = rule.to_port
  } }
}
