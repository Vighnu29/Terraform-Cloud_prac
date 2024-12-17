locals {
  resource_group_name  = "appgrp"
  location = "North Europe"


  virtual_network = {
    name = app_network
    address_prefixes=["10.0.0.0/16"]
  }
  subnet_address_prefix = ["10.0.0.0/24","10.0.1.0/24"]
}
