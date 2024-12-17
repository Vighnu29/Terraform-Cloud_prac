resource "azurerm_virtual_network" "app_network" {
  name                = local.virtual_network.name
  location            = var.local.location
  resource_group_name = var.local.resource_group_name
  address_space       = local.virtual_network.address_prefixes

  subnet {
    name             = "appsubnet01"
    address_prefixes = ["10.0.0.0/24"]
  }

  subnet {
    name             = "websubnet01"
    address_prefixes = ["10.0.1.0/24"]
  }

depends_on = [var.local.resource_group_name]
 
}