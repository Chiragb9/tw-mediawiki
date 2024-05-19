resource "azurerm_resource_group" "rg" {
  name     = "tw-mw-rg"
  location = "eastus"
}

resource "azurerm_kubernetes_cluster" "cluster" {
  name                = "tw-mw-cluster"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "tw-mw"

  default_node_pool {
    name       = "default"
    node_count = "1"
    vm_size    = "standard_d2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}