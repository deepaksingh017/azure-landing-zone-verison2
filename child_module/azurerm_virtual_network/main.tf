resource "azurerm_virtual_network" "deepakVirtualNetwork" {
  for_each = var.child_virtual_network
  name                = each.value.name
  address_space       = each.value.address_space
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
}
