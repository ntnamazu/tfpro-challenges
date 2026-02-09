
locals {

  ami_map = {
    micro = "t2.micro",
    nano  = "t3.nano"
  }

  ec2_str  = file("./ec2.csv")
  ec2_list = csvdecode(local.ec2_str)

  use1_ec2 = [for element in local.ec2_list : element if element.Region == "us-east-1"]

  use1_ec2_ami_standardized = [for element in local.use1_ec2 : {
    ami_id                 = element.AMI_ID,
    region                 = element.Region,
    team_name              = element.Team_Name,
    instance_type          = lookup(local.ami_map, element.instance_type),
    instance_type_original = element.instance_type
  }]

}
