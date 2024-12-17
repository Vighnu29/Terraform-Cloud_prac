locals {
  resource_group_name ="appgrp"
  location = "East US"
  
  virtural_network = {
    name="app-network2906"
    address_space ="10.0.0.0/16"
  }
  subnets = tolist([
    {
      name ="subnetA"
      address_prefix = "10.0.0.0/24"
    },
    {
      name = "subnetB"
      address_prefix = "10.0.1.0/24"
    }
  ])
  
}
