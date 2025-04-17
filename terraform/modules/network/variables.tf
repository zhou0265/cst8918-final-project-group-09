variable "resource_group_name_prefix" {
  type        = string
  description = "Prefix for the resource group name"
  default     = "cst8918-final-project-group"
}

variable "group_number" {
  type        = string
  description = "Your group number from Brightspace"
}

variable "location" {
  type        = string
  description = "The Azure region to deploy resources"
  default     = "Canada Central" # You can choose a different default
}

variable "vnet_address_space" {
  type        = list(string)
  description = "The address space for the virtual network"
  default     = ["10.0.0.0/14"]
}

variable "subnet_prefixes" {
  type        = map(string)
  description = "Map of subnet names to their address prefixes"
  default = {
    prod  = "10.0.0.0/16"
    test  = "10.1.0.0/16"
    dev   = "10.2.0.0/16"
    admin = "10.3.0.0/16"
  }
}