output "resource_group_name" {
  value       = azurerm_resource_group.main.name
  description = "The name of the resource group"
}

output "resource_group_id" {
  value       = azurerm_resource_group.main.id
  description = "The ID of the resource group"
}

output "virtual_network_id" {
  value       = azurerm_virtual_network.main.id
  description = "The ID of the virtual network"
}

output "subnet_ids" {
  value = {
    prod  = azurerm_subnet.prod.id
    test  = azurerm_subnet.test.id
    dev   = azurerm_subnet.dev.id
    admin = azurerm_subnet.admin.id
  }
  description = "A map of subnet names to their IDs"
}