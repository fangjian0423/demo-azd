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
  }
}

resource "azurecaf_name" "app_umi" {
  resource_type       = "azurerm_user_assigned_identity"
  name                = "pqsl-script"

  provisioner "local-exec" {
    command     = "./scripts/pg-create-aad-role.sh ${var.pg_server_fqdn} ${var.app_identity_principal_id} ${var.pg_database_name} ${var.pg_aad_admin_user} ${var.pg_custom_role_name_with_aad_identity}"
    working_dir = path.module
    when        = create
  }
}