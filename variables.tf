variable "location" {
  description = "The Azure region to deploy resources in"
  default     = "centralindia"
}

variable "resource_group_name" {
  description = "The name of the resource group"
  default     = "static-website-rg"
}

variable "storage_account_name" {
  description = "The name of the storage account"
  default     = "shivamwipro123" # Storage account names must be globally unique
}

variable "index_document" {
  description = "The name of the index document"
  default     = "index.html"
}

variable "error_document" {
  description = "The name of the error document"
  default     = "error.html"
}
