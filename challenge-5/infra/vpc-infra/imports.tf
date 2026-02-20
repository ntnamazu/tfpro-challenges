import {
  to = module.vpc.aws_vpc.main
  id = "vpc-0839b8a89acb0b40d"
}

import {
  to = module.vpc.aws_vpc.random
  id = "vpc-0141e66fc28b2a6ea"
}

import {
  to = module.vpc.aws_subnet.challenge_5["subnet1"]
  id = "subnet-0aa9b6d5c62c85bb3"
}

import {
  to = module.vpc.aws_subnet.challenge_5["subnet2"]
  id = "subnet-048ed90dae49609a6"
}

import {
  to = module.vpc.aws_subnet.random["subnet1"]
  id = "subnet-0b28d9408855d48ad"
}

import {
  to = module.vpc.aws_subnet.random["subnet2"]
  id = "subnet-02f5484f57800d201"
}
