childrg= {

    childrg = {
      name       = "childresource_group"
      location   = "centralindia"
      managed = "deepak"

    }
    childrg1 = {
      name       = "childresource_group_DB"
      location   = "centralindia"
      managed = "deepak"

    }
  }
childstorage = {
  storage = {
    name = "dpstoragedeepak"
    resource_group_name = "childresource_group"
  location ="centralindia"
  account_tier = "Standard"
  account_replication_type = "GRS"

  }
}
 virtualnetwork=  {
      name           = "chileVnetwork"
      location       = "centralIndia"
      address_space  = ["10.143.0.0/16"]
     resource_group_name = "childresource_group"

    }

   subnetnetwork= {

    childsubnet = {
      name           = "childsubnet"
       address_prefixes      = ["10.143.2.0/24"]
      virtual_network_name  = "chileVnetwork"
     resource_group_name = "childresource_group"
    }

    childsubnet1 = {
      name           = "childsubnet_another"
       address_prefixes      = ["10.143.3.0/24"]
      virtual_network_name  = "chileVnetwork"
     resource_group_name = "childresource_group"
    }

    childsubnet2 = {
      name           = "childsubnet_another_new"
       address_prefixes      = ["10.143.4.0/24"]
      virtual_network_name  = "chileVnetwork"
     resource_group_name = "childresource_group"
    }
  }