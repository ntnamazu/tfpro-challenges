# import {
#   id = "eminent-hippo-kplabs-0"
#   to = aws_iam_user.lb[0]
# }

# import {
#   id = "eminent-hippo-kplabs-1"
#   to = aws_iam_user.lb[1]
# }

# import {
#   id = "eminent-hippo-kplabs-2"
#   to = aws_iam_user.lb[2]
# }

# import {
#   id = "eminent-hippo-kplabs-0:ec2-describe-policy"
#   to = aws_iam_user_policy.lb_ro[0]
# }

# import {
#   id = "eminent-hippo-kplabs-1:ec2-describe-policy"
#   to = aws_iam_user_policy.lb_ro[1]
# }

# import {
#   id = "eminent-hippo-kplabs-2:ec2-describe-policy"
#   to = aws_iam_user_policy.lb_ro[2]
# }

# import {
#   to = aws_s3_bucket.example["kplabs-1"]
#   id = "eminent-hippo-kplabs-1"
# }

# import {
#   to = aws_s3_bucket.example["kplabs-2"]
#   id = "eminent-hippo-kplabs-2"
# }

# import {
#   id = "eminent-hippo-kplabs-1/base.txt"
#   to = aws_s3_object.object["kplabs-1"]
# }

# import {
#   id = "eminent-hippo-kplabs-2/base.txt"
#   to = aws_s3_object.object["kplabs-2"]
# }

# import {
#   id = "sg-05c75c446b64fad71"
#   to = aws_security_group.example
# }

# import {
#   id = "sgr-0ce22f6dea03089de"
#   to = aws_vpc_security_group_ingress_rule.example
# }
