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
  value = module.common-n01580173.storage_account.name
}

output "LinuxHostNames" {
  value = module.linux-n01580173.LinuxVMNames
}

output "LinuxDomianNames" {
  value = module.linux-n01580173.LinuxDomainNames
}

output "LinuxPrivateAddresses" {
  value = module.linux-n01580173.LinuxPrivateAddresses
}

output "LinuxPublicAddresses" {
  value = module.linux-n01580173.LinuxPublicAddresses
}

output "WindowsHostNames" {
  value = module.vmwindows-n01580173.WindowsHostNames
}

output "WindowsDomainNames" {
  value = module.vmwindows-n01580173.WindowsDomainNames
}

output "WindowsPrivateIPAddress" {
  value = module.vmwindows-n01580173.WindowsPrivateIP
}

output "WindowsPublicIPAddress" {
  value = module.vmwindows-n01580173.WindowsPublicIP
}

output "lbname" {
  value = module.loadbalancer-n01580173.lb_name
}

output "databasename" {
  value = module.database-n01580173.dbname
}