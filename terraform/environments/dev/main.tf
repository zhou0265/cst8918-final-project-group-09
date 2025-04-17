module "network" {
  source       = "../../modules/network"
  group_number = "109"
  location     = "Canada Central" # Or your preferred location
}

output "network_outputs" {
  value = module.network
}