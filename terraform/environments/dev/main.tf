terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.26.0"
    }
  }

  #backend "azurerm" {
   # resource_group_name  = "cst8918-backend-group-109"
    #storage_account_name = "cst8918backend109"
    #container_name      = "tfstate"
    #key                 = "terraform-dev.tfstate"
  #}
}
provider "azurerm" {
  features {}
  subscription_id = "431fca8d-e614-4268-aa3c-22a2e684933a"
}
module "backend" {
  source       = "../../modules/backend"
  location     = "Canada Central"
  group_number = "109"
}
module "network" {
  source       = "../../modules/network"
  group_number = "109"
  location     = "canadacentral" # Or your preferred location
}
module "aks" {
  source              = "../../modules/aks"
  location            = "Canada Central"
  resource_group_name = module.backend.resource_group_name
  group_number        = "109-aks-dev-v2"
  node_count          = 1
  subnet_id           = module.network.subnet_ids["test"]
}

module "weather-app" {
  source                    = "../../modules/weather-app"
  aks_host                  = module.aks.aks_host
  aks_client_certificate    = module.aks.aks_client_certificate
  aks_client_key            = module.aks.aks_client_key
  aks_cluster_ca_certificate = module.aks.aks_cluster_ca_certificate
  container_registry        = module.backend.acr_login_server
  weather_api_key           = var.weather_api_key
}
