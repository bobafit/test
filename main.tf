resource "azurerm_resource_group" "rg_test_charley" {
  name     = "rg-charley-test"
  location = "France Central"
}

resource "azurerm_resource_group" "rg_test_charley2" {
  name     = "rg-charley-test"
  location = "France Central"
}

resource "azurerm_resource_group" "rg_test_charley2" {
  name     = "rg-charley-test"
  location = "France Central"
}


resource "azurerm_storage_account" "SA" {
  name                     = "storaametest0255254"
  resource_group_name      = azurerm_resource_group.rg_test_charley.name
  location                 = azurerm_resource_group.rg_test_charley.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}