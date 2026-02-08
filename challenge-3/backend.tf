terraform {
  backend "s3" {
    bucket = "nt-namazu-tfpro-challenges-tfstate"
    key    = "challenge-3/terraform.tfstate"
    region = "ap-northeast-1"
  }
}
