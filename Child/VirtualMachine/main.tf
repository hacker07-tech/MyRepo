resource "azurerm_virtual_machine" "vm_01" {
    name                  = var.vm_name
    location              = data.azurerm_resource_group.example.location  
    resource_group_name   = data.azurerm_resource_group.example.name
    network_interface_ids = [data.azurerm_network_interface.example.id]
    vm_size               = "Standard_B2s"

    

    
    storage_os_disk {
        name              = "example-os-disk"
        caching           = "ReadWrite"
        create_option     = "FromImage"
        managed_disk_type = "Standard_LRS"
    }
    
    storage_image_reference {
        publisher = "Canonical"
        offer     = "UbuntuServer"
        sku       = "18.04-LTS"
        version   = "latest"
    }
    
    os_profile {
        computer_name  = "hostname"
        admin_username = "adminuser"
        admin_password = "Password1234!"
    }
    
    os_profile_linux_config {
        disable_password_authentication = false
    }
    
    tags = {
        environment = "Testing"
    }
  
}