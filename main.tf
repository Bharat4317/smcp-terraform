terraform {
  backend "azurerm" {
    resource_group_name  = "smcp-terraform"
    storage_account_name = "smcpterraform"
    container_name       = "terraform-files"
    key                  = "terraformgithubexample.tfstate"
  }
}
 
provider "azurerm" {
  version = "~>2.0"
  features {}
}
 
#Create Resource Group
resource "azurerm_resource_group" "terraform-github-actions" {
  name     = "github-actions"
  location = "eastus2"
}
