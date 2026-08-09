data "azurerm_network_security_group" "datansg" {
    for_each = var.subnets
  name                = each.value.nsg_name
  resource_group_name = each.value.resource_group_name
}

data "azurerm_subnet" "datsubnet" {
    for_each = var.subnets
  name                 = each.value.name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}