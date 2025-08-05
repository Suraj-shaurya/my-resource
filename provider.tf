terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.38.1"
    }

  }
  backend "azurerm" {
    resource_group_name  = "rg-saturday"
    storage_account_name = "stgsaturday"
    container_name       = "contstg"
    key                  = "prod/terraform.tfstate"
  }
}



provider "azurerm" {
  features {}
  subscription_id = "2e0b9694-0f2b-429c-804f-b3698b528e7c"

}

