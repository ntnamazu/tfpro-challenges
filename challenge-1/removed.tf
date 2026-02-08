removed {
  from = aws_s3_object.object
  lifecycle {
    destroy = false 
  }
}
