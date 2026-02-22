provider "aws" {
  region = "us-east-1"
  alias  = "readonly"
  # shared_config_files      = [".aws/config"] # Configured by export AWS_CONFIG_FILE=/workspaces/tfpro-challenges/challenge-6/.aws/config
  shared_credentials_files = ["base-folder/default-creds.txt"]
  profile                  = "readonly-access"
}

provider "aws" {
  region                   = "us-east-1"
  alias                    = "iam-access"
  shared_config_files      = [".aws/config"]
  shared_credentials_files = [".aws/credentials"]
  profile                  = "iam-access"
}

provider "aws" {
  region                   = "us-east-1"
  alias                    = "ec2-access"
  shared_config_files      = [".aws/config"]
  shared_credentials_files = [".aws/credentials"]
  profile                  = "ec2-access"
}


