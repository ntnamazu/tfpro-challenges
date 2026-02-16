locals {
  sg_data = csvdecode(file("sg.csv"))
  # apps    = distinct([for record in local.sg_data : record.description])
  apps = { for record in local.sg_data : record.description => record... }

  app1_inbound_rules = { for index, rule in local.apps.app-1 : index => rule if rule.direction == "in" }
  app2_inbound_rules = { for index, rule in local.apps.app-2 : index => rule if rule.direction == "in" }
}
