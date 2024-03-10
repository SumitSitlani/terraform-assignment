variable "location" {}
variable "rg-name" {}
variable "workspace_name" {}
variable "vault_name" {}
variable "storage_account_name" {}
locals {
  tags = {
    Assignment     = "CCGC 5502 Automation Assignment"
    Name           = "Sumit.Sitlani"
    ExpirationDate = "2024-12-31"
    Environment    = "Learning"
  }
}