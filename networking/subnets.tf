resource "azurerm_subnet" "websubnet01" {
  name = "websubnet01"
  resource_group_name = var.local.resource_group_name
  virtual_network_name = azurerm_virtual_network.app_network.name
  address_prefixes = var.local.subnets[0].address_prefix
}
  
resource "azurerm_subnet" "appsubnet01" {
  name = "appsubnet01"
  resource_group_name = var.local.resource_group_name
  virtual_network_name = azurerm_virtual_network.app_network.name
  address_prefixes = var.local.subnets[1].address_prefix
}