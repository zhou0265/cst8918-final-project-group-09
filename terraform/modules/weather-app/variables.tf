variable "aks_host" {
  description = "The Kubernetes API server host for the AKS cluster"
  type        = string
}

variable "aks_client_certificate" {
  description = "The client certificate for authenticating to the AKS cluster"
  type        = string
}

variable "aks_client_key" {
  description = "The client key for authenticating to the AKS cluster"
  type        = string
}

variable "aks_cluster_ca_certificate" {
  description = "The cluster CA certificate for the AKS cluster"
  type        = string
}

variable "container_registry" {
  description = "The Azure Container Registry login server (e.g., myacr.azurecr.io)"
  type        = string
}

variable "weather_api_key" {
  description = "The API key for the weather service (e.g., OpenWeatherMap)"
  type        = string
  sensitive   = true
}