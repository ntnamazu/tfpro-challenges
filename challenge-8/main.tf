resource "aws_security_group" "this" {
  name   = "kplabs-sg"
  vpc_id = data.aws_vpc.from_base_vpc.id
}

resource "aws_vpc_security_group_ingress_rule" "this" {
  for_each = local.ingress_rule_computed

  security_group_id = aws_security_group.this.id
  ip_protocol       = each.value.protocol
  cidr_ipv4         = each.value.cidr_block
  from_port         = each.value.from_port
  to_port           = each.value.to_port
}
