terraform {
  backend "s3" {
    bucket = "nt-namazu-tfpro-challenges-tfstate"
    key    = "challenge-6/base-resources/terraform.tfstate"
    region = "ap-northeast-1"
  }
}
