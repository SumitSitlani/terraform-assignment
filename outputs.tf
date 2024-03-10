output "rgname" {
  value = module.rgroup-n01580173.rg-name.name
}

output "vnetname" {
  value = module.network-n01580173.vnetdetails.name
}

output "subnetname" {
  value = module.network-n01580173.subnetdetails.name
}

output "workspace_name" {
  value = module.common-n01580173.workspace_name
}

output "vault_name" {
  value = module.common-n01580173.vault_name
}

output "storage_account_name" {
  value = module.common-n01580173.storage_account_name
}