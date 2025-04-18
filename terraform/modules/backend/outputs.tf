output "resource_group_name" {
  description = "The name of the resource group created by the backend module"
  value       = azurerm_resource_group.backend.name
}

output "acr_login_server" {
  description = "The login server of the Azure Container Registry"
  value       = azurerm_container_registry.acr.login_server
}