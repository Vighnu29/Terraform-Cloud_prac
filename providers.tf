terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.14.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {
  }
  subscription_id = "0cfe2870-d256-4119-b0a3-16293ac11bdc"
  tenant_id = "84f1e4ea-8554-43e1-8709-f0b8589ea118"
  client_id = "37ca0f99-5f85-4eb3-897a-c9360a312e66"
  }