output "LinuxVMNames" {
  value = values(azurerm_linux_virtual_machine.linux_vm)[*].name
}

output "LinuxDomainNames" {
  value = values(azurerm_public_ip.linux_pip)[*].fqdn
}

output "LinuxPrivateAddresses" {
  value = values(azurerm_linux_virtual_machine.linux_vm)[*].private_ip_address
}

output "LinuxPublicAddresses" {
  value = values(azurerm_linux_virtual_machine.linux_vm)[*].public_ip_address
}