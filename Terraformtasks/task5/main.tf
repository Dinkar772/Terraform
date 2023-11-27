 ##### For-each use ##############
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example_rg" {
  for_each = var.rgs
  name     = each.value["name"]           #each.value.name#
  location = each.value["location"]       #each.value.location#
  tags     = each.value["tags"]           #each.value.tags#
} 
variable "rgs" {
  type = map(object({
    name     = string
    location = string
    tags     = map(string)
  }))
  default = {
    "first" = {
      name     = "dinkar_rg"
      location = "west us"
      tags = {
        "owner"    = "Dinkar Sharma"
        "downtime" = "Evening"
      }
    }
    "second" = {
      name     = "dinuuu_rg"
      location = "east us"
      tags = {
        "owner"    = "Dinkar Sharma"
        "downtime" = "Night"
      }
    }
  }
}