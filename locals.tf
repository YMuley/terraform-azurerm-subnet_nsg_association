locals {
  network_security_group={for network_security_group in var.association_list:nsg.nsg_name=>nsg}
}