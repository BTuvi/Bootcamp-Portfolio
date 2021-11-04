#Create Postgresql Server
resource "azurerm_postgresql_server" "postgres" {
  name                = "botcamp-postgres"
  location            = var.AZURE_LOCATION
  resource_group_name = var.RESOURCE_GROUP_NAME

  sku_name = "B_Gen5_2"

  storage_mb                   = 5120
  backup_retention_days        = 7
  geo_redundant_backup_enabled = false
  auto_grow_enabled            = true

  administrator_login          = "postgres"
  administrator_login_password = var.VM_ADMIN_PASSWORD_DB
  version                      = "11"
  ssl_enforcement_enabled      = false
}

#Create Postgres firewall rule
resource "azurerm_postgresql_firewall_rule" "postgres_firewall1" {
  name                = "firewall-rule-vm1"
  resource_group_name = var.RESOURCE_GROUP_NAME
  server_name         = azurerm_postgresql_server.postgres.name
  start_ip_address    = azurerm_public_ip.publicipforvm1.ip_address
  end_ip_address      = azurerm_public_ip.publicipforvm1.ip_address
}

#Create Postgres firewall rule
resource "azurerm_postgresql_firewall_rule" "postgres_firewall2" {
  name                = "firewall-rule-vm2"
  resource_group_name = var.RESOURCE_GROUP_NAME
  server_name         = azurerm_postgresql_server.postgres.name
  start_ip_address    = azurerm_public_ip.publicipforvm2.ip_address
  end_ip_address      = azurerm_public_ip.publicipforvm2.ip_address
}