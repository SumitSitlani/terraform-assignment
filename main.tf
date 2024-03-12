module "rgroup-n01580173" {
  source   = "./modules/rgroup-n01580173"
  rname    = "rgroup-n01580173"
  location = "canadacentral"
}

module "network-n01580173" {
  source             = "./modules/network-n01580173"
  rg-name            = module.rgroup-n01580173.rg-name.name
  location           = module.rgroup-n01580173.rg-name.location
  vnet-name          = "n01580173-VNET"
  vnet-address-space = ["10.0.0.0/16"]
  subnet-name        = "n01580173-SUBENT"
  subnet-add-space   = ["10.0.1.0/24"]
  nsg-name           = "n01580173-NSG"
}

module "common-n01580173" {
  source               = "./modules/common-n01580173"
  location             = module.rgroup-n01580173.rg-name.location
  rg-name              = module.rgroup-n01580173.rg-name.name
  vault_name           = "vault-0173"
  workspace_name       = "workspace-0173"
  storage_account_name = "san01580173"
}

module "linux-n01580173" {
  source   = "./modules/vmlinux-n01580173"
  location = module.rgroup-n01580173.rg-name.location
  rg-name  = module.rgroup-n01580173.rg-name.name
  linux_name = {
    "n01580173-c-vm1" = "Standard_B1s"
    "n01580173-c-vm2" = "Standard_B1s"
    "n01580173-c-vm3" = "Standard_B1s"
  }
  admin_username      = "sumitsitlani"
  linux_avs           = "LinuxAVS"
  subnet_id           = module.network-n01580173.subnetdetails.id
  storage_account_uri = module.common-n01580173.storage_account.primary_blob_endpoint
}

module "vmwindows-n01580173" {
  source              = "./modules/vmwindows-n01580173"
  location            = module.rgroup-n01580173.rg-name.location
  rg-name             = module.rgroup-n01580173.rg-name.name
  vm_name             = "n0173-w-vm"
  subnetid            = module.network-n01580173.subnetdetails.id
  storage_account_uri = module.common-n01580173.storage_account.primary_blob_endpoint
  machine_count       = 1
}
module "datadisk-n01580173" {
  source = "./modules/datadisk-n01580173"
  location            = module.rgroup-n01580173.rg-name.location
  rg-name             = module.rgroup-n01580173.rg-name.name
  machine_id = flatten([module.vmwindows-n01580173.WindowsVMids, module.linux-n01580173.LinuxVMids])
}

module "loadbalancer-n01580173" {
  source = "./modules/loadbalancer-n01580173"
  location = module.rgroup-n01580173.rg-name.location
  rg-name = module.rgroup-n01580173.rg-name.name
  nic_id = module.linux-n01580173.nic_id
  ip_config = module.linux-n01580173.ip_config
}

module "database-n01580173" {
  source = "./modules/database-n01580173"
  location = module.rgroup-n01580173.rg-name.location
  rg-name = module.rgroup-n01580173.rg-name.name
  db_name = "assignmentdbn0173"
  administrator_login = "plsqladmin"
  administrator_login_password = "LetMeInItsAdmin@"
}