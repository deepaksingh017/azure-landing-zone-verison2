resource "azurerm_resource_group" "deepak_child_rg" {
  for_each   = var.child_rg
  name       = each.value.name
  location   = each.value.location
  managed_by = each.value.managed
  
}


