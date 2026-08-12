resource "azurerm_service_plan" "main" {
  name                = "asp-cloudqm-dev"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location

  os_type  = "Linux"
  sku_name = "B1"
}

resource "azurerm_linux_web_app" "main" {
  name                = "app-cloudqm-dev"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  service_plan_id     = azurerm_service_plan.main.id

  site_config {}
}