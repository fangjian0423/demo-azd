output "AZURE_CONTAINER_REGISTRY_ENDPOINT" {
  value = module.acr.CONTAINER_REGISTRY_LOGIN_SERVER
  sensitive = true
}

output "AZURE_CONTAINER_REGISTRY_NAME" {
  value = module.acr.CONTAINER_REGISTRY_NAME
  sensitive = true
}

output "AZURE_CONTAINER_REGISTRY_PWD" {
  value = module.acr.CONTAINER_REGISTRY_PASSWORD
  sensitive = true
}

output "IMAGE_NAME" {
  value = module.container_app_app.CONTAINER_APP_NAME_IMAGE_NAME
  sensitive = true
}

output "AZURE_CONTAINER_ENVIRONMENT_NAME" {
  value = module.container_env.CONTAINER_ENV_NAME
  sensitive = true
}

output "AZURE_APPLICATION_INSIGHTS_CONNECTION_STRING" {
  value = module.applicationinsights.APPLICATIONINSIGHTS_CONNECTION_STRING
  sensitive = true
}

output "API_CONTAINER_APP_PRINCIPAL_ID" {
  value = module.container_app_app.CONTAINER_APP_NAME_IDENTITY_PRINCIPAL_ID
  sensitive = true
}

output "AZURE_CONTAINER_ENVIRONMENT_ID" {
  value = module.container_env.CONTAINER_ENV_ID
  sensitive = true
}

output "SERVICE_APP_NAME" {
  value = module.container_app_app.CONTAINER_APP_NAME
}

output "AZURE_PSQL_URL" {
  value = module.postgresql.AZURE_POSTGRESQL_SPRING_DATASOURCE_URL
}

output "AZURE_PSQL_USERNAME" {
  value = module.postgresql.AZURE_POSTGRESQL_USERNAME
}

output "AZURE_PSQL_PASSWORD" {
  value = module.postgresql.AZURE_POSTGRESQL_PASSWORD
  sensitive = true
}

output "AZURE_PSQL_CUSTOM_USERNAME" {
  value = module.postgresql.AZURE_POSTGRESQL_SPRING_DATASOURCE_URL
}

output "AZURE_CONTAINER_APP_ID" {
  value = module.container_app_app.CONTAINER_APP_ID
}