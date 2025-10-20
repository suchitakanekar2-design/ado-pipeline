terraform {
 required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "4.48.0"
    } 
 } 

 backend "azurerm" {
  # azurerm_resource_group = "dev-rg"
  # azurerm_storage_account = "devstorage980"
  # container_name = "devstoragecontainer980"
  # key = "dev.tfstate"
   
 }
}

provider "azurerm" {
features {}
subscriptions_id = "9f14d6da-b117-434d-922f-f763c8ec88bb"
  
}

resource "azurerm_resource_group" "dev-rg" {
  name = "dev-rg"
  location = "east us"
  
}
