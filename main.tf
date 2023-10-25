#----------- Network Security Group - Virtual Network Association
resource "azurerm_subnet_network_security_group_association" "subnet_network_security_group_association" {
  for_each                  = local.subnet_list
  subnet_id                 = lookup(var.subnet_output, each.key, null) == null ? null : lookup(var.subnet_output, each.key, null).id
  network_security_group_id = lookup(var.network_security_group_output, format("%s/%s", each.value.nsg_resource_group_name, each.value.network_security_group_name), null) == null ? null : lookup(var.network_security_group_output, format("%s/%s", each.value.nsg_resource_group_name, each.value.network_security_group_name), null).id
}
