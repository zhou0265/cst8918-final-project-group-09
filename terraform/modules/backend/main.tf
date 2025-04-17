resource "azurerm_resource_group" "backend" {
  name     = "cst8918-backend-group-${var.group_number}"
  location = var.location
}

resource "azurerm_storage_account" "backend" {
  name                     = "cst8918backend${var.group_number}"
  resource_group_name      = azurerm_resource_group.backend.name
  location                 = azurerm_resource_group.backend.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.backend.name
  container_access_type = "private"
}