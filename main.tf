resource "azurerm_network_security_rule" "rule22" {
  direction                   = "Inbound"
  source_address_prefix       = "0.0.0.0/0"
  network_security_group_name = var.nsgName
  access                      = "Allow"
  priority                    = 100
  destination_address_prefix  = "*"
  destination_port_range      = "22"
  protocol                    = "TCP"
}
