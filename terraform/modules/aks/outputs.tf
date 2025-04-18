output "aks_cluster_name" {
  description = "The name of the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks.name
}

output "aks_host" {
  description = "The Kubernetes API server host for the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks.kube_config[0].host
}

output "aks_client_certificate" {
  description = "The client certificate for authenticating to the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks.kube_config[0].client_certificate
}

output "aks_client_key" {
  description = "The client key for authenticating to the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks.kube_config[0].client_key
}

output "aks_cluster_ca_certificate" {
  description = "The cluster CA certificate for the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks.kube_config[0].cluster_ca_certificate
}