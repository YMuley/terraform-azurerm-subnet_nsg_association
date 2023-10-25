variable "subnet_list" {
  type        = list(any)
  default     = []
  description = "list of virtual network objects"
}

variable "subnet_output" {
  type        = any
  default     = []
  description = "list of Subnet objects"
}

variable "network_security_group_output" {
  type        = map(any)
  default     = {}
  description = "Map of network security group objects"
}
