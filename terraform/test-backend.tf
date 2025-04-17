provider "azurerm" {
  features {}
}

module "backend" {
  source       = "./modules/backend"
  group_number = "09" # Replace with your group number, e.g., 4
}