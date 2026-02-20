data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "nt-namazu-tfpro-challenges-tfstate"
    key    = "challenge-5/vpc.tfstate"
    region = "ap-northeast-1"
  }
}

locals {
  subnet_ids    = data.terraform_remote_state.vpc.outputs.challenge_5_subnet_ids
  target_vpc_id = data.terraform_remote_state.vpc.outputs.main_vpc_id

  sg_data = csvdecode(file("../../base-folder/sg.csv"))
}

