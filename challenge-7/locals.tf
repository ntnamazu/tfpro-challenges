locals {
  csv_data         = file("./ec2.csv")
  csv_decoded_data = csvdecode(local.csv_data)

  instance_by_type = { for row in local.csv_decoded_data : row.instance_type => row... }
}
