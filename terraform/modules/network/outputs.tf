output "resource_group_name" {
  description = "The name of the resource group for network resources"
  value       = azurerm_resource_group.network.name
}

output "virtual_network_id" {
  description = "The ID of the virtual network"
  value       = azurerm_virtual_network.network.id
}

output "subnet_ids" {
  description = "A map of subnet names to their IDs"
  value       = { for name, subnet in azurerm_subnet.subnets : name => subnet.id }
}