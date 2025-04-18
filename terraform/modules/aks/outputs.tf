output "test_aks_id" {
  description = "ID of the test AKS cluster"
  value       = azurerm_kubernetes_cluster.test.id
}

output "prod_aks_id" {
  description = "ID of the prod AKS cluster"
  value       = azurerm_kubernetes_cluster.prod.id
}

output "test_kube_config" {
  description = "Kubeconfig for the test AKS cluster"
  value       = azurerm_kubernetes_cluster.test.kube_config_raw
  sensitive   = true
}

output "prod_kube_config" {
  description = "Kubeconfig for the prod AKS cluster"
  value       = azurerm_kubernetes_cluster.prod.kube_config_raw
  sensitive   = true
}

output "test_aks_host" {
  description = "Host URL for the test AKS cluster"
  value       = azurerm_kubernetes_cluster.test.kube_config.0.host
}

output "prod_aks_host" {
  description = "Host URL for the prod AKS cluster"
  value       = azurerm_kubernetes_cluster.prod.kube_config.0.host
}

output "test_aks_client_certificate" {
  description = "Client certificate for the test AKS cluster"
  value       = azurerm_kubernetes_cluster.test.kube_config.0.client_certificate
  sensitive   = true
}

output "prod_aks_client_certificate" {
  description = "Client certificate for the prod AKS cluster"
  value       = azurerm_kubernetes_cluster.prod.kube_config.0.client_certificate
  sensitive   = true
}

output "test_aks_client_key" {
  description = "Client key for the test AKS cluster"
  value       = azurerm_kubernetes_cluster.test.kube_config.0.client_key
  sensitive   = true
}

output "prod_aks_client_key" {
  description = "Client key for the prod AKS cluster"
  value       = azurerm_kubernetes_cluster.prod.kube_config.0.client_key
  sensitive   = true
}

output "test_aks_cluster_ca_certificate" {
  description = "Cluster CA certificate for the test AKS cluster"
  value       = azurerm_kubernetes_cluster.test.kube_config.0.cluster_ca_certificate
  sensitive   = true
}

output "prod_aks_cluster_ca_certificate" {
  description = "Cluster CA certificate for the prod AKS cluster"
  value       = azurerm_kubernetes_cluster.prod.kube_config.0.cluster_ca_certificate
  sensitive   = true
}