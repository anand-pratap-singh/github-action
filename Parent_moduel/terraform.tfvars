rg_name = {
  rg1 = {
    name     = "rg-prod-01"
    location = "eastus"
  }

  rg2 = {
    name     = "rg-prod-03"
    location = "westus"
  }
}

vnets = {
  vnet1 = {
    name                = "vnet-prod-01"
    location            = "eastus"
    resource_group_name = "rg-prod-01"
    address_space       = ["10.143.0.0/16"]
  }
}

subnets = {
  subnet1 = {
    name                 = "subnet-prod-01"
    resource_group_name  = "rg-prod-01"
    virtual_network_name = "vnet-prod-01"
    address_prefixes     = ["10.143.1.0/24"]
  }
  subnet2 = {
    name                 = "subnet-prod-02"
    resource_group_name  = "rg-prod-01"
    virtual_network_name = "vnet-prod-01"
    address_prefixes     = ["10.143.2.0/24"]
  }

}

