module "ec2" {
  source     = "../../modules/ec2"
  subnet_ids = local.subnet_ids
}

module "sg" {
  source  = "../../modules/sg"
  vpc_id  = local.target_vpc_id
  sg_data = local.sg_data
}
