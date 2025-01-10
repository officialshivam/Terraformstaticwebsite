terraform {
  required_providers {
    azurerm = {  # Corrected to "azurerm"
      source = "hashicorp/azurerm"
      version = "4.4.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "7334d5c5-1792-4c31-8a6b-41c0238bab48"
  features {}
}
