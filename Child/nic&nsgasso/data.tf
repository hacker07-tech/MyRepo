data "azurerm_network_interface" "example" {
  name                = "sht-nic"
  resource_group_name = "sht"

}

data "azurerm_network_security_group" "example" {
  name                = "sht-nsg"
  resource_group_name = "sht"

}