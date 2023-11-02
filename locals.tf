locals {
  network_security_group = { for network_security_group in var.association_list : network_security_group.nsg_name => network_security_group }
}
