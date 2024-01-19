variable "app_insights" {
description = "https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights"
  type      = object({
    name                       = string
    location                   = string
    resource_group_name        = string

    law = object({
      name                = string
      resource_group_name = string
    })

    application_type                      = string
    daily_data_cap_in_gb                  = optional(number)
    daily_data_cap_notifications_disabled = optional(bool)
    retention_in_days                     = optional(number)
    sampling_percentage                   = optional(number)
    disable_ip_masking                    = optional(bool)
    local_authentication_disabled         = optional(bool)
    internet_ingestion_enabled            = optional(bool)
    internet_query_enabled                = optional(bool)
    
    tags = map(any)
  })
  }
