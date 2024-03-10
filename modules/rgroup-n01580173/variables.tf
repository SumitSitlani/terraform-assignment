variable "rname" {}

variable "location" {}

locals {
  tags = {
    Assignment     = "CCGC 5502 Automation Assignment"
    Name           = "Sumit.Sitlani"
    ExpirationDate = "2024-12-31"
    Environment    = "Learning"
  }
} 