terraform {
  required_version = ">= 1.5.7"
  backend "azurerm" {
    resource_group_name  = "tamopstfstates"
    storage_account_name = "gitops01skopos"
    container_name       = "tfstatedevops"
    key                  = "tfstatedevops.tfstate"
  }
}

provider "azurerm" {
  features {}
}

data "azurerm_client_config" "current" {
}

#Create Resource Group
resource "azurerm_resource_group" "tamops" {
  name     = "iac-demo02"
  location = "westus2"
}

  