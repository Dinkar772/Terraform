###### Azure Resource Group and Storage Account #####

provider "azurerm" {
  features {}
}


resource "azurerm_resource_group" "example" {
  name     = "example-demoresources8686"
  location = "West Europe"
}

resource "azurerm_storage_account" "example" {
  name                     = "storageaccountname757575"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}