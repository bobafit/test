terraform {
  backend "azurerm" {
    storage_account_name = "satestterraform33545"
    resource_group_name = "VPN-test"
    container_name = "terraform"
    key = "test_charley.tfstate"
    use_azuread_auth = true
  }
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 3.22.0"
    }
  }
}

provider "azurerm" {
  features {}

}
