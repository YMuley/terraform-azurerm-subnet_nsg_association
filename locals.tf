# locals {
#   network_security_group = { for network_security_group in var.subnet_nsg_association_list : network_security_group.nsg_name => network_security_group }
# }

locals {
  network_security_group = { for network_security_group in var.subnet_nsg_association_list : format("%s-%s-%s", network_security_group.nsg_name, network_security_group.subnet_name, network_security_group.virtual_network_name) => network_security_group }
}
