# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used.

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.77.0" # version is 2.90.0 on 12/29/21
      configuration_aliases = [
        azurerm.connectivity,
        azurerm.management,
      ]
    }
  }
}

provider "azurerm" {
  features {}
}

# Declare an aliased provider block using your preferred configuration.
# This will be used for the deployment of all "Connectivity resources" to the specified `subscription_id`.
provider "azurerm" {
  alias           = "connectivity"
  subscription_id = "2d479f58-3999-4c7d-ba51-737f6b8032b1"
  features {}
}

# Declare a standard provider block using your preferred configuration.
# This will be used for the deployment of all "Management resources" to the specified `subscription_id`.
provider "azurerm" {
  alias           = "management"
  subscription_id = "32236649-0cf4-4ee5-852f-3b3d865667fc"
  features {}
}

# Declare a standard provider block using your preferred configuration.
# This will be used for the deployment of all "Identity resources" to the specified `subscription_id`.
provider "azurerm" {
  alias           = "identity"
  subscription_id = "47fb6973-1b23-4388-8078-4d72c71a3247"
  features {}
}

# Declare an aliased provider block using your preferred configuration.
# This will be used for the deployment of landing zone to the specified `subscription_id`.
provider "azurerm" {
  alias           = "lz"
  subscription_id = "cdc34bfa-1b00-46f4-9868-631d7a957de1"
  features {}
}
