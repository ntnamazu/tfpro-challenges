output "list_amis" {
  value = [for row in local.csv_decoded_data : row.AMI_ID]
}

output "unique_team_names" {
  value = distinct([for row in local.csv_decoded_data : row.Team_Name])
}

output "regions_list_of_lists" {
  value = [for row in local.csv_decoded_data : [row.Region]]
}

output "list_list_condition" {
  value = [for row in local.csv_decoded_data : [row.Region] if row.instance_type == "nano"]
}

# output "instance_count_by_type" {
#   value = {
#     micro = length([for row in local.csv_decoded_data : row if row.instance_type == "micro"])
#     nano  = length([for row in local.csv_decoded_data : row if row.instance_type == "nano"])
#   }
# }

output "instance_count_by_type" {
  value = {
    for key, value in local.instance_by_type : key => length(value)
    if key == "micro" || key == "nano"
  }
}

output "instance_details" {
  value = [for row in local.csv_decoded_data : {
    team = row.Team_Name
    type = row.instance_type
  }]
}

# output "map_of_maps" {
#   value = { for row in local.csv_decoded_data :
#     join("_", [
#       row.instance_type,
#       row.Region,
#       row.Team_Name
#     ]) => row
#   }
# }

output "map_of_maps" {
  value = { for row in local.csv_decoded_data :
    format("%s_%s_%s",
      row.instance_type,
      row.Region,
      row.Team_Name
    ) => row
  }
}
