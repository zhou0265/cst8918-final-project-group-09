variable "resource_group_name" {
  description = "Name of the resource group for the AKS clusters"
  type        = string
}

variable "location" {
  description = "Azure region for the AKS clusters"
  type        = string
  default     = "canadacentral"
}

variable "test_cluster_name" {
  description = "Name of the AKS cluster for the test environment"
  type        = string
  default     = "cst8918-aks-test"
}

variable "prod_cluster_name" {
  description = "Name of the AKS cluster for the prod environment"
  type        = string
  default     = "cst8918-aks-prod"
}

variable "test_subnet_id" {
  description = "ID of the test subnet for the test AKS cluster"
  type        = string
}

variable "prod_subnet_id" {
  description = "ID of the prod subnet for the prod AKS cluster"
  type        = string
}

variable "kubernetes_version" {
  description = "Kubernetes version for the AKS clusters"
  type        = string
  default     = "1.32"
}