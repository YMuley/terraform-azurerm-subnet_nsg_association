output "snet_network_security_group_assoication_output" {
  value       = azurerm_subnet_network_security_group_association.subnet_network_security_group_association
  description = "Outputs of subnet and nsg association object"
}
