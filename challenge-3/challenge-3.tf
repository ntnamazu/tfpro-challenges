terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.80.0"
    }
  }
}

provider "aws" {
  region                   = "us-east-1"
  alias                    = "asg"
  shared_credentials_files = ["./.aws/credentials"]
  shared_config_files      = ["./.aws/conf"]
  profile                  = "asg"
}

provider "aws" {
  region                   = "us-east-1"
  alias                    = "iam"
  shared_credentials_files = ["./.aws/credentials"]
  shared_config_files      = ["./.aws/conf"]
  profile                  = "iam"
}

module "asg_resources" {
  source = "./modules/asg"
  providers = {
    aws = aws.asg
  }
}

module "iam_resources" {
  source = "./modules/iam"
  providers = {
    aws = aws.iam
  }
}


provider "aws" {
  region                   = "us-east-1"
  alias                    = "ro"
  shared_credentials_files = ["./.aws/credentials"]
  shared_config_files      = ["./.aws/conf"]
  profile                  = "ro"
}

data "aws_caller_identity" "local" {
  provider = aws.ro
}

resource "local_file" "this" {
  content  = data.aws_caller_identity.local.account_id
  filename = "account-number.txt"
}
