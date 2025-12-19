variable "rg_name" {
    type = string
    
  
}

variable "rg_location"{
    type = string
  
}


variable "vnet_name" {
    type = string
}

variable "subnet_name" {
    type = string
}

variable "subnet_address_prefix" {
    type = string
}
 
 variable "vm_name" {
    type = string
  
}


variable "vnet_location" {
    type = string
}

variable "vnet_address_space" {
   
}



variable "public_ip_name" {
    type = string
}



variable "nsg_name" {
    type = string
}



variable "nic_name" {
    type = string
}

variable "public_ip_id" {
    type = string
    default = null
}

