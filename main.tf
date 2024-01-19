data "azurerm_log_analytics_workspace" "law" {
  name                = var.app_insights.law.name
  resource_group_name = var.app_insights.law.resource_group_name
}

resource "azurerm_application_insights" "app_insights" {
   name                = var.app_insights.name
   location            = var.app_insights.location
   resource_group_name = var.app_insights.resource_group_name

   workspace_id                          = data.azurerm_log_analytics_workspace.law.id
   application_type                      = var.app_insights.application_type
   daily_data_cap_notifications_disabled = var.app_insights.daily_data_cap_notifications_disabled
   retention_in_days                     = var.app_insights.retention_in_days
   sampling_percentage                   = var.app_insights.sampling_percentage
   disable_ip_masking                    = var.app_insights.disable_ip_masking
   local_authentication_disabled         = var.app_insights.local_authentication_disabled
   internet_ingestion_enabled            = var.app_insights.internet_ingestion_enabled
   internet_query_enabled                = var.app_insights.internet_query_enabled

   tags = var.app_insights.tags
}