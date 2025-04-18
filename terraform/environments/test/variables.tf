variable "resource_group_name" {
  type        = string
  description = "The name of the resource group for the test environment."
  default     = "cst8918-final-project-group-09-canadacentral" # Or your desired resource group name
}

variable "location" {
  type        = string
  description = "The Azure region for the test environment."
  default     = "canadacentral" # Or your desired Azure region
}