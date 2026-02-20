terraform {
  backend "s3" {
    bucket = "nt-namazu-tfpro-challenges-tfstate"
    key    = "challenge-5/vpc.tfstate"
    region = "ap-northeast-1"
  }
}
