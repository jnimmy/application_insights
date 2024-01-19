output "application_insights_id" {
  description = "Application Insights Id"
  value = azurerm_application_insights.app_insights.id
}

output "application_insights_appid" {
  description = "Application Insights App Id"
  value = azurerm_application_insights.app_insights.app_id
}

output "application_insights_connection_string" {
  description = "Application Insights App Id"
  value = azurerm_application_insights.app_insights.connection_string
  sensitive = true
}