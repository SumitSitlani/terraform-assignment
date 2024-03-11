variable "location" {}
variable "machine_id" {}
variable "rg-name" {}
locals {
  tags = {
    Assignment     = "CCGC 5502 Automation Assignment"
    Name           = "Sumit.Sitlani"
    ExpirationDate = "2024-12-31"
    Environment    = "Learning"
  }
}