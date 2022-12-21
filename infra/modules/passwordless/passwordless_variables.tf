variable "pg_custom_role_name_with_aad_identity" {
  type        = string
  description = "Custom PostgreSQL role with Azure AD object identifier"
}

variable "pg_aad_admin_user" {
  type        = string
  description = "PostgreSQL Azure AD administrator"
}

variable "pg_database_name" {
  type        = string
  description = "Database name of PostgreSQL"
}

variable "pg_server_fqdn" {
  type        = string
  description = "PostgreSQL FQDN"
}

variable "app_identity_principal_id" {
  type        = string
  description = "Principal id of application identity"
}