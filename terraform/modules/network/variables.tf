variable "resource_group_name_prefix" {
  description = "Prefix for the resource group name (e.g., cst8918-final-project-group)"
  type        = string
  default     = "cst8918-final-project-group"
}

variable "group_number" {
  description = "Group number for naming resources (e.g., 09) from Brightspace"
  type        = string
}

variable "location" {
  description = "Azure region to deploy network resources"
  type        = string
  default     = "canadacentral"
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/14"]
}

variable "subnet_prefixes" {
  description = "Map of subnet names to their address prefixes"
  type        = map(string)
  default = {
    prod  = "10.0.0.0/16"
    test  = "10.1.0.0/16"
    dev   = "10.2.0.0/16"
    admin = "10.3.0.0/16"
  }
}
