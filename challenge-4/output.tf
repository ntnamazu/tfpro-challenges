output "running_ec2" {
  value = [for instance in aws_instance.this : {
    id     = instance.id,
    region = instance.region,
    team   = instance.tags.Name,
    # type        = instance.instance_type,
    type        = instance.tags.instance_type,
    subnet      = instance.subnet_id,
    firewall_id = instance.vpc_security_group_ids,
  }]
}
