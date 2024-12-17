
resource "azurerm_network_security_group" "app_nsg" {
  name                = "appnsg"
  location            = local.location
  resource_group_name = local.resource_group_name
}
