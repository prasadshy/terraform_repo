resource "azurerm_resource_group" "tf-storage-rg" {
  name     ="tf-storage-rg"
  location = "West Europe"
}

resource "azurerm_storage_account" "tfbackendstorage" {
  name                     = "tfbackendstorage111"
  resource_group_name      = azurerm_resource_group.tf-storage-rg.name
  location                 = azurerm_resource_group.tf-storage-rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}