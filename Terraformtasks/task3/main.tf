####### Azure Virtual Machine #############

provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "example" {
  name     = "random5343"
  location = "West Europe"
}

resource "azurerm_virtual_network" "example" {
  name                = "virtualNetwork1dfdfd"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]


  tags = {
    environment = "Production"
  }
}