variable "location" {}
variable "rg-name" {}
variable "sku_name" {
    default = "B_Gen5_1"
}
variable "pversion" {
    default = "10"
}
variable "administrator_login" {}
variable "administrator_login_password" {}
variable "db_name" {}
locals {
  tags = {
    Assignment     = "CCGC 5502 Automation Assignment"
    Name           = "Sumit.Sitlani"
    ExpirationDate = "2024-12-31"
    Environment    = "Learning"
  }
}