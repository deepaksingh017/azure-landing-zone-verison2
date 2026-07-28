module "resource_group" {
  source = "../child_module/azurerm_resource_group"
  child_rg = var.childrg
}
module "storageaccount" {
  depends_on = [module.resource_group]
  source = "../child_module/azurerm_storage_group"
  storage_deepak = var.childstorage
}
module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../child_module/azurerm_virtual_network"
  child_virtual_network = {

    childvirtualnetwork = var.virtualnetwork
  }
}


module "subnet" {
  depends_on = [module.virtual_network]
  source     = "../child_module/azurerm_subnet"
  subnetchild = var.subnetnetwork
}