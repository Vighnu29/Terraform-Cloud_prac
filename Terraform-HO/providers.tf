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

}