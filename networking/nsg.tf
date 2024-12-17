
resource "azurerm_network_security_group" "app_nsg" {
  name                = "appnsg"
  location            = var.locals.location
  resource_group_name = var.local.resource_group_name
}
