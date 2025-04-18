resource "azurerm_resource_group" "network" {
  name     = "cst8918-final-project-group-${var.group_number}-canadacentral"
  location = var.location
}

resource "azurerm_virtual_network" "network" {
  name                = "vnet-canadacentral"
  location            = var.location
  resource_group_name = azurerm_resource_group.network.name
  address_space       = ["10.0.0.0/8"]
}

resource "azurerm_subnet" "subnets" {
  for_each            = var.subnets
  name                = each.key
  resource_group_name = azurerm_resource_group.network.name
  virtual_network_name = azurerm_virtual_network.network.name
  address_prefixes    = [each.value]
}