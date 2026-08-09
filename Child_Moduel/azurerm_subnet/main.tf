resource "azurerm_network_security_group" "nsg" {
  for_each = var.subnets

  name                = each.value.nsg_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
}

resource "azurerm_subnet" "example" {
    for_each = var.subnets
  name                 = each.value.name
  resource_group_name  = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name
  address_prefixes     = each.value.address_prefixes
}

resource "azurerm_subnet_network_security_group_association" "nsgs" {
  for_each = var.subnets

  subnet_id                 = data.azurerm_subnet.datsubnet[each.key].id
  network_security_group_id = data.azurerm_network_security_group.datansg[each.key].id
}