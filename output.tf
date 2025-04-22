locals {
  indexes = { for k in proxmox_virtual_environment_vm.this : k.name => { for index, name in k.network_interface_names : k.network_interface_names[index] => index }}
}

output "ipv4_addresses" {
  value = { for k in proxmox_virtual_environment_vm.this : k.name => { for iface_key, iface_value in local.indexes[k.name] : iface_key => k.ipv4_addresses[iface_value] }}
}

