import {
  to = module.ec2.aws_instance.this["subnet1"]
  id = "i-0d18187dd8c90404a"
}

import {
  to = module.ec2.aws_instance.this["subnet2"]
  id = "i-0f7906ce83bd06ffe"
}

import {
  to = module.sg.aws_security_group.this["app-1"]
  id = "sg-0125e59f058bbee65"
}

import {
  to = module.sg.aws_security_group.this["app-2"]
  id = "sg-0ff4aef894f8074fb"
}

import {
  to = module.sg.aws_vpc_security_group_ingress_rule.app_1_sg["0"]
  id = "sgr-068d0b41e99b255bb"
}

import {
  to = module.sg.aws_vpc_security_group_ingress_rule.app_1_sg["1"]
  id = "sgr-060a4ba948ee3eed8"
}

import {
  to = module.sg.aws_vpc_security_group_ingress_rule.app_2_sg["2"]
  id = "sgr-0139d5ec9fc56f4c9"
}
