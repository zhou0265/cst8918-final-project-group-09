# After
resource "azurerm_kubernetes_cluster" "test" {
  name                = var.test_cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "${var.test_cluster_name}-dns"
  kubernetes_version  = var.kubernetes_version

  default_node_pool {
    name                = "default"
    node_count          = 1
    vm_size             = "Standard_B2s"
    vnet_subnet_id      = var.test_subnet_id
  }

  network_profile {
    network_plugin = "azure"
    service_cidr   = "10.4.0.0/16"
    dns_service_ip = "10.4.0.10"
  }

  identity {
    type = "SystemAssigned"
  }
}

resource "azurerm_kubernetes_cluster" "prod" {
  name                = var.prod_cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "${var.prod_cluster_name}-dns"
  kubernetes_version  = var.kubernetes_version

  default_node_pool {
    name                = "default"
    enable_auto_scaling = true
    min_count           = 1
    max_count           = 3
    vm_size             = "Standard_B2s"
    vnet_subnet_id      = var.prod_subnet_id
  }

  network_profile {
    network_plugin = "azure"
    service_cidr   = "10.4.0.0/16"
    dns_service_ip = "10.4.0.10"
  }

  identity {
    type = "SystemAssigned"
  }
}