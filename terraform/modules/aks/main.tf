resource "azurerm_kubernetes_cluster" "aks" {
  name                = "cst8918-aks-group-${var.group_number}"
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "cst8918aks${var.group_number}"

  default_node_pool {
    name           = "default"
    node_count     = var.node_count
    vm_size        = "Standard_D2_v2"
    vnet_subnet_id = var.subnet_id
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin = "azure"
    dns_service_ip = "10.1.0.10"    # Changed to non-overlapping range
    service_cidr   = "10.1.0.0/16"  # Changed to non-overlapping range
  }

  tags = {
    Environment = "Dev"
    Project     = "CST8918"
  }
}