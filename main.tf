resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = var.location
  account_tier              = "Standard"
  account_replication_type = "LRS"

  static_website {
    index_document     = var.index_document
    error_404_document = var.error_document
  }
}

resource "azurerm_storage_container" "static_content" {
  name                  = "www"
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "blob"  # Correct value here
}
