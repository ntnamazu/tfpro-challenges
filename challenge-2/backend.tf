terraform {
  backend "s3" {
    bucket = "nt-namazu-tfpro-challenges-tfstate"
    key    = "challenge-2/terraform.tfstate"
    region = "ap-northeast-1"
  }
}
