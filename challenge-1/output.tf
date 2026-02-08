output "s3_bucket_names" {
    value = [for bucket in aws_s3_bucket.example : bucket.id]
}

output "iam_user_names" {
    value = aws_iam_user.lb[*].name
}

# output "security_group_id" {
#     value = aws_security_group.example.id
# }

# output "security_group_rule_id" {
#     value = aws_vpc_security_group_ingress_rule.example.security_group_rule_id
# }