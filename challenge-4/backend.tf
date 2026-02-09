terraform {
  backend "s3" {
    bucket = "nt-namazu-tfpro-challenges-tfstate"
    key    = "challenge-4/terraform.tfstate"
    region = "ap-northeast-1"
  }
}
