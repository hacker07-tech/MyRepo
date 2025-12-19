data "azurerm_network_interface" "example" {
  name                =  "sht-nic"
  resource_group_name = "sht"
}

data "azurerm_resource_group" "example" {
  name = "sht"
}
