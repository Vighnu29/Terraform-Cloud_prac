resource "azurerm_network_interface" "webnic01" {
  name                = "web-nic01"
  location            = var.local.location
  resource_group_name = var.local.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.local.subnets.websubnet01.id
    private_ip_address_allocation = "Dynamic"
  }
}