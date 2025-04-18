terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "network" {
  source                     = "../../modules/network"
  resource_group_name_prefix = "cst8918-final-project-group"
  group_number               = "09"
  location                   = "canadacentral"
  vnet_address_space         = ["10.0.0.0/14"]
  subnet_prefixes            = {
    prod  = "10.0.0.0/16"
    test  = "10.1.0.0/16"
    dev   = "10.2.0.0/16"
    admin = "10.3.0.0/16"
  }
}

module "aks" {
  source              = "../../modules/aks"
  resource_group_name = "cst8918-final-project-group-09-canadacentral"
  location            = "canadacentral"
  test_cluster_name   = "cst8918-aks-test"
  prod_cluster_name   = "cst8918-aks-prod"
  test_subnet_id      = module.network.subnet_ids.test
  prod_subnet_id      = module.network.subnet_ids.prod
  kubernetes_version  = "1.32"
}