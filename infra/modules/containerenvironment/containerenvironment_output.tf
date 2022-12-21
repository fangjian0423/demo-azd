output "CONTAINER_ENV_NAME" {
  value     = azapi_resource.env.name
  sensitive = true
}

output "CONTAINER_ENV_ID" {
  value     = azapi_resource.env.id
  sensitive = true
}
