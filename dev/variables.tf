# vsphere variables
variable "vsphere_user" {
  type        = string
  description = "vsphere vcenter or esxi username"
}

variable "vsphere_password" {
  type        = string
  description = "vsphere vcenter or esxi password"
}

variable "vsphere_server" {
  type        = string
  description = "vsphere vcenter or esxi server address"
}

variable "datacenter" {
  type        = string
  description = "datacenter name"
  default     = "ha-datacenter"
}

variable "esxi_host" {
  type        = string
  description = "esxi host address"
  default     = "ha-host"
}

# cobbler variables
variable "cobbler_username" {
  type        = string
  description = "cobbler username"
}

variable "cobbler_password" {
  type        = string
  description = "cobbler password"
}

variable "cobbler_url" {
  type        = string
  description = "cobbler server address"
}

# alicloud
variable "region" {
  type        = string
  description = "region"
  default     = "cn-beijing"
}
