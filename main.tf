#----------- Network Security Group - Virtual Network Association
resource "azurerm_subnet_network_security_group_association" "subnet_network_security_group_association" {
  for_each                  = local.network_security_group
  subnet_id                 = var.subnet_output[each.key.subnet_id].id//var.subnet_output[format("%s/%s", each.value.virtual_network_name, each.value.subnet_name)].id 
  network_security_group_id = var.network_security_group_output[each.value.nsg_name].id
}
