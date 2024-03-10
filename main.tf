module "rgroup-n01580173" {
  source = "./modules/rgroup-n01580173"
  rname = "rgroup-n01580173"
  location = "canadacentral"
}

module "network-n01580173" {
  source = "./modules/network-n01580173"
  rg-name = module.rgroup-n01580173.rg-name.name
  location = module.rgroup-n01580173.rg-name.location
  vnet-name = "n01580173-VNET"
  vnet-address-space = ["10.0.0.0/16"]
  subnet-name = "n01580173-SUBENT"
  subnet-add-space = ["10.0.1.0/24"]
  nsg-name = "n01580173-NSG"
}

module "common-n01580173" {
  source = "./modules/common-n01580173"
  location = module.rgroup-n01580173.rg-name.location
  rg-name = module.rgroup-n01580173.rg-name.name
  vault_name = "vault-0173"
  workspace_name = "workspace-0173"
  storage_account_name = "sa-0173"
}