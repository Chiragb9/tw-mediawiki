terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.48.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "iac-rg"
    storage_account_name = "tfstateiac180524"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}