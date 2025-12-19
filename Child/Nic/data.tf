data "azurerm_subnet" "Subnet_1" {
    name                 = "sht-subnet"
    virtual_network_name = "sht-vnet"
    resource_group_name  = "sht"
}

data "azurerm_public_ip" "PublicIP_1" {
    name                = "publicip01"
    resource_group_name = "sht"
}