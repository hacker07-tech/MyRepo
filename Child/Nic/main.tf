resource "azurerm_network_interface" "nic_1" {
    name = var.nic_name
    location = var.rg_location
    resource_group_name = var.rg_name

    ip_configuration {
        name = "internal"
        subnet_id = data.azurerm_subnet.Subnet_1.id
        private_ip_address_allocation = "Dynamic"
        public_ip_address_id = data.azurerm_public_ip.PublicIP_1.id
    }
  
}