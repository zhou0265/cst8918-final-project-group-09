provider "azurerm" {
  features {}
  subscription_id = "431fca8d-e614-4268-aa3c-22a2e684933a"
}
module "network" {
  source       = "../../modules/network"
  group_number = "109"
  location     = "canadacentral" # Or your preferred location
}

output "network_outputs" {
  value = module.network
}