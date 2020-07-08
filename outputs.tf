output "id" {
  value       = azurerm_storage_account.main.id
  description = "The ID of the storage account."
}

output "name" {
  value       = azurerm_storage_account.main.name
  description = "The name of the storage account."
}

output "primary_connection_string" {
  value       = azurerm_storage_account.main.primary_connection_string
  description = "The primary connection string for the storage account."
}

output "primary_access_key" {
  value       = azurerm_storage_account.main.primary_access_key
  description = "The primary access key for the storage account."
}

output "containers" {
  value = {
    for c in azurerm_storage_container.main :
    c.name => {
      id   = c.id
      name = c.name
    }
  }
  description = "Map of containers."
}

output "shares" {
  value = { for s in azurerm_storage_share.main :
    s.name => {
      id   = s.id
      name = s.name
    }
  }
  description = "Map of shares."
}

output "tables" {
  value       = { for t in azurerm_storage_table.main : t.name => t.id }
  description = "Map of tables."
}