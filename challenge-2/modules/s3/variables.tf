variable "random_id" {
  type = string
}

variable "s3_buckets" {
  type = set(string)
}

variable "s3_base_object" {
  type = string
}
