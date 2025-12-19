module "rgmod" {
  source = "../Child/ResourceGroup"
    rg_name = var.rg_name
    rg_location = var.rg_location
}

module "vnetmod" {
  depends_on = [ module.rgmod ]
  source = "../Child/VirtualNetwork"
    vnet_name          = var.vnet_name
  vnet_address_space = var.vnet_address_space
  rg_name            = var.rg_name
  vnet_location      = var.rg_location
}

module "subnetmod" {
  depends_on = [ module.vnetmod, module.rgmod ]
  source = "../Child/Subnet"
    subnet_name           = var.subnet_name
  subnet_address_prefix = var.subnet_address_prefix
  vnet_name             = var.vnet_name
  rg_name               = var.rg_name
}

module "pipmod" {
  depends_on = [ module.rgmod ]
  source = "../Child/PublicIP"
    public_ip_name = var.public_ip_name
  rg_location    = var.rg_location
  rg_name        = var.rg_name
}

module "nsgmod" {
  depends_on = [ module.rgmod ]
  source = "../Child/Nsg"
    nsg_name = var.nsg_name
    rg_name = var.rg_name
    rg_location  =var.rg_location
}

module "nicmod" {
  depends_on = [ module.subnetmod, module.rgmod ]
  source =   "../Child/Nic"
    nic_name = var.nic_name
    rg_name = var.rg_name
    rg_location = var.rg_location
    
}

module "vmmod" {
  depends_on = [ module.nicmod, module.rgmod ]
  source = "../Child/VirtualMachine"
    vm_name = var.vm_name
    
}
