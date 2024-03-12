variable "rg-name" {}
variable "location" {}
variable "nic_id" {}
variable "ip_config" {}
locals {
  tags = {
    Assignment     = "CCGC 5502 Automation Assignment"
    Name           = "Sumit.Sitlani"
    ExpirationDate = "2024-12-31"
    Environment    = "Learning"
  }
}