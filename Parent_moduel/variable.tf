variable "rg_name" {
    type = "string"
}
variable "vnets" {
     type = map(object({
    name                = string
    address_space       = list(string)
    location            = string
    resource_group_name = string
  }))
}
variable "subnets" {
    type = map(object({
    name                 = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
    nsg_name             = string
    location             = string
  }))
}

