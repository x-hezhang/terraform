variable "datacenter" {
  type        = string
  description = "datacenter name"
  default     = "ha-datacenter"
}

variable "datastore" {
  type        = string
  description = "datastore name"
  default     = "datastore1"
}

variable "esxi_host" {
  type        = string
  description = "esxi host address"
  default     = "ha-host"
}

variable "name" {
  type        = string
  description = "guest os name"
}

variable "guest_id" {
  type        = string
  description = "guest os type"
  default     = "centos7_64Guest"
}

variable "annotation" {
  type        = string
  description = "guest os description"
  default     = ""
}

variable "firmware" {
  type        = string
  description = "guest os firmware, bios or efi"
  default     = "bios"
}

variable "num_cpus" {
  type        = number
  description = "number of cpus"
  default     = 1
}
variable "num_cores_per_socket" {
  type        = number
  description = "number of cores per socket"
  default     = 1
}

variable "cpu_hot_add_enabled" {
  type        = bool
  description = "enable cpu hot add"
  default     = true
}

variable "cpu_hot_remove_enabled" {
  type        = bool
  description = "enable cpu host remove"
  default     = true
}

variable "memory" {
  type        = number
  description = "memory size (gb)"
  default     = 1
}

variable "memory_hot_add_enabled" {
  type        = bool
  description = "enable memory hot add"
  default     = true
}

variable "cdrom_datastore" {
  type        = string
  description = "cdrom datastore name"
  default     = "datastore1"
}

variable "cdrom_path" {
  type        = string
  description = "cdrom iso path"
}

variable "disks" {
  type = list(object({
    label            = string
    size             = number
    unit_number      = number
    thin_provisioned = bool
  }))

  description = "guest os disk info"

  default = [
    {
      label            = "system"
      size             = 40
      unit_number      = 0
      thin_provisioned = false
    }
  ]
}

variable "network_interfaces" {
  type        = list(string)
  description = "network interface the guest of attached"
  default     = ["VM Network"]
}
