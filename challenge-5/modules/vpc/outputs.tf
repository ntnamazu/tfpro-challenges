output "challenge_5_subnet_ids" {
  #   value = values(aws_subnet.challenge_5)[*].id
  value = { for key, subnet in aws_subnet.challenge_5 : key => subnet.id }
}

output "main_vpd_id" {
  value = aws_vpc.main.id
}
