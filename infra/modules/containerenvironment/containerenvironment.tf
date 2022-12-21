terraform {
  required_providers {
    azurerm = {
      version = "~>3.33.0"
      source  = "hashicorp/azurerm"
    }
    azurecaf = {
      source  = "aztfmod/azurecaf"
      version = "~>1.2.15"
    }
    azapi = {
      source = "Azure/azapi"
      version = "~>1.1.0"
    }
  }
}

data "azurerm_subscription" "current" {}

# ------------------------------------------------------------------------------------------------------
# Deploy Azure Container Environment
# ------------------------------------------------------------------------------------------------------
resource "azapi_resource" "env" {
  type = "Microsoft.App/managedEnvironments@2022-06-01-preview"
  name                = "cae-${var.resource_token}"
  location = var.location
  parent_id = "/subscriptions/${data.azurerm_subscription.current.subscription_id}/resourceGroups/${var.rg_name}"
  tags = var.tags
  body = jsonencode({
    properties = {
      appLogsConfiguration = {
        destination = "log-analytics"
        logAnalyticsConfiguration = {
          customerId = var.workspace_id
          sharedKey = var.workspace_primary_shared_key
        }
      }
    }
  })
}