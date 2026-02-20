resource "aws_security_group" "this" {
  for_each = local.apps

  name   = "${each.key}-sg"
  vpc_id = var.vpc_id
}

resource "aws_vpc_security_group_ingress_rule" "app_1_sg" {
  for_each = local.app1_inbound_rules

  security_group_id = one([for sg in aws_security_group.this : sg.id if sg.name == "app-1-sg"])

  cidr_ipv4   = each.value.cidr_block
  from_port   = each.value.port
  ip_protocol = each.value.protocol
  to_port     = each.value.port
}


resource "aws_vpc_security_group_ingress_rule" "app_2_sg" {
  for_each = local.app2_inbound_rules

  security_group_id = one([for sg in aws_security_group.this : sg.id if sg.name == "app-2-sg"])

  cidr_ipv4   = each.value.cidr_block
  from_port   = each.value.port
  ip_protocol = each.value.protocol
  to_port     = each.value.port
}
