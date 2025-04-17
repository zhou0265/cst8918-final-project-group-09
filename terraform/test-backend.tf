provider "azurerm" {
  features {}
  subscription_id = "ee39387e-4892-429d-aeb2-ca4f142fbd25"
}

module "backend" {
  source       = "./modules/backend"
  group_number = "09" # Replace with your group number, e.g., 4
}