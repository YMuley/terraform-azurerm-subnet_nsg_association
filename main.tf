#----------- Network Security Group - Virtual Network Association
resource "azurerm_subnet_network_security_group_association" "subnet_network_security_group_association" {
  for_each                  = local.network_security_group
  subnet_id                 = var.subnet_output[each.value.subnet_id].id
  network_security_group_id = var.network_security_group_output[each.value.nsg_name].id
}
