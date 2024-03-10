variable "location" {}
variable "rg-name" {}
variable "vnet-name" {}
variable "vnet-address-space" {}
variable "subnet-name" {}
variable "subnet-add-space" {}
variable "nsg-name" {}
locals {
  tags = {
    Assignment     = "CCGC 5502 Automation Assignment"
    Name           = "Sumit.Sitlani"
    ExpirationDate = "2024-12-31"
    Environment    = "Learning"
  }
} 