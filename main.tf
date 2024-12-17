resource "azurerm_storage_account" "app_stor2906" {
  name                     = "appstore2906"
  resource_group_name      = local.resource_group_name
  location                 = local.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  depends_on = [ azurerm_resource_group.appgrp ]
}

resource "azurerm_storage_container" "scripts" {
  name                  = "scripts"
  storage_account_name   = azurerm_storage_account.app_stor2906.name
}

resource "azurerm_storage_blob" "script01" {
  name                   = "script01.ps1"
  storage_account_name   = azurerm_storage_account.app_stor2906.name
  storage_container_name = azurerm_storage_container.scripts.name
  type                   = "Block"
  source                 = "script01.ps1"
}

resource "azurerm_network_security_group" "app_nsg" {
  name                = "appnsg"
  location            = local.location
  resource_group_name = local.resource_group_name
}


resource "azurerm_virtual_network" "app_network" {
  name                = local.virtual_network.name
  location            = local.location
  resource_group_name = local.resource_group_name
  address_space       = [local.virtual_network.address_prefixes]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

  subnet {
    name             = "appsubnet01"
    address_prefixes = [local.subnet_address_prefix[0]]
  }

  subnet {
    name             = "websubnet01"
    address_prefixes = [local.subnet_address_prefix[1]]
  }

depends_on = [local.resource_group_name]
 
}