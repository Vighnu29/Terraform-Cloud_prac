resource "azurerm_storage_container" "scripts" {
  name                  = "scripts"
  storage_account_id = azurerm_storage_account.appstor2906.id
}

resource "azurerm_storage_blob" "script01" {
  name                   = "script01.ps1"
  storage_account_name   = azurerm_storage_account.appstor2906.name
  storage_container_name = azurerm_storage_container.scripts.name
  type                   = "Block"
  source                 = "script01.ps1"
}