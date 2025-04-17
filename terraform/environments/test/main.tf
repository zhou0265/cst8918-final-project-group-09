# terraform/environments/test/main.tf
terraform {
  backend "azurerm" {
    resource_group_name  = "cst8918-backend-group-<group-number>"
    storage_account_name = "cst8918backend<group-number>"
    container_name       = "tfstate"
    key                  = "test.terraform.tfstate"
  }
}