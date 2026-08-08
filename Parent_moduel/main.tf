module "resource_group" {
    source = "../Child_Moduel/azurerm_resource_group"
    rg_name = var.rg_name
}

module "virtual_network" {
    depends_on = [module.resource_group]
    source = "../Child_Moduel/azurerm_virtual_netwoork"
    vnet_name = var.vnets
}
module "subnet" {
    depends_on = [module.virtual_network, module.resource_group]
    source = "../Child_Moduel/azurerm_subnet"
    subnets = var.subnets
}
