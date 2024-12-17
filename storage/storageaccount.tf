resource "azurerm_storage_account" "appstor2906" {
  name                     = "appstor2906"
  resource_group_name      = var.local.resource_group_name
  location                 = var.local.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

}