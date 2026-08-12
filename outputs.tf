output "resource_group_name" {
  value = azurerm_resource_group.main.name
}

output "storage_account_name" {
  value = azurerm_storage_account.storage.name
}

output "web_app_name" {
  value = azurerm_linux_web_app.main.name
}

output "function_app_name" {
  value = azurerm_linux_function_app.main.name
}

output "cosmosdb_account_name" {
  value = azurerm_cosmosdb_account.main.name
}

output "vnet_name" {
  value = azurerm_virtual_network.main.name
}