terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
   
   features {}
   subscription_id = "239f86cf-d0d2-4954-935f-40e39253100c"
}