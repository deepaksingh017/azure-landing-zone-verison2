terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.70.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "childresource_group"
    storage_account_name = "dpstoragedeepak"
    container_name = "tfstate"
    key = "dev.tfstate"

  }
}

provider "azurerm" {
  features {}
}