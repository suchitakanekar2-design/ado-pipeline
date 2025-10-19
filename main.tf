terraform {
 required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~>3.0"
    } 
 } 

 backend "azurerm" {
  azurerm_resource_group = "dev-rg"
  azurerm_storage_account = "devstorage980"
  container_name = "devstoragecontainer980"
  key = "dev.tfstate"
   
 }
}

provider "azurerm" {
    features {}
  
}

resource "azurerm_resource_group" "dev-rg" {
  name = "dev-rg"
  location = "east us"
  
}