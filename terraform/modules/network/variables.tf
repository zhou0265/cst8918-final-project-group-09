#variable "resource_group_name_prefix" {
# description = "Prefix for the resource group name (e.g., cst8918-final-project-group)"
#  type        = string
# default     = "cst8918-final-project-group"
#}

variable "group_number" {
  description = "Group number for naming resources (e.g., 09) from Brightspace"
  type        = string
}

variable "location" {
  description = "Azure region to deploy network resources"
  type        = string
  default     = "canadacentral"
}

#variable "vnet_address_space" {
#  description = "Address space for the virtual network"
#  type        = list(string)
#  default     = ["10.0.0.0/14"]
#}

variable "subnets" {
  description = "A map of subnet names to CIDR blocks"
  type        = map(string)
  default     = {
    test = "10.0.0.0/16"
  }
}
