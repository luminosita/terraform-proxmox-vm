locals {
  indexes = { for k in proxmox_virtual_environment_vm.this : k.name => { for index, name in k.network_interface_names : k.network_interface_names[index] => index }}
}

output "ipv4_addresses" {
  value = { for k in proxmox_virtual_environment_vm.this : k.name => k.ipv4_addresses[local.indexes[k.name]["eth0"]] }
}

output "mac_addresses" {
  value = { for k in proxmox_virtual_environment_vm.this : k.name => k.mac_addresses[local.indexes[k.name]["eth0"]] }
}
