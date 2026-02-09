resource "aws_instance" "this" {
  count = length(local.use1_ec2_ami_standardized)

  ami           = local.use1_ec2_ami_standardized[count.index].ami_id
  instance_type = local.use1_ec2_ami_standardized[count.index].instance_type
  tags = {
    Name          = local.use1_ec2_ami_standardized[count.index].team_name,
    instance_type = local.use1_ec2_ami_standardized[count.index].instance_type_original
  }
  provider = aws.use1
}
