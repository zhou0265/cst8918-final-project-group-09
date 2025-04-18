variable "location" {
  description = "The Azure region where the AKS cluster will be deployed"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group where the AKS cluster will be deployed"
  type        = string
}

variable "group_number" {
  description = "The group number to uniquely identify the AKS cluster"
  type        = string
}

variable "node_count" {
  description = "The number of nodes in the default node pool"
  type        = number
  default     = 1
}

variable "subnet_id" {
  description = "The ID of the subnet where the AKS cluster will be deployed"
  type        = string
}