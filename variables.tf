variable "image" {
  description = "Talos image configuration"
  type = object({
    file_name        = string
    file_name_update = string
    url              = string
    url_update       = string
    datastore_id     = string
  })
}

variable "nodes" {
  description = "Configuration for cluster nodes"
  type = map(object({
    host_node      = string
    machine_type   = string
    datastore_id   = string
    ip             = optional(string)
    mac_address    = string
    network_device = optional(string, "vmbr0")
    vlan_id        = optional(number)
    vm_id          = number
    cpu            = number
    ram_dedicated  = number
    update         = optional(bool, false)
    igpu           = optional(bool, false)
  }))
}

variable "network" {
  type = object({
    gateway     = string
    subnet_mask = optional(string, "24")
  })
}
