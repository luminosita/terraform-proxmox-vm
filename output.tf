output "ipv4_addresses" {
  value = { for k in proxmox_virtual_environment_vm.this : k.name => k.ipv4_addresses }
}

output "mac_addresses" {
  value = { for k in proxmox_virtual_environment_vm.this : k.name => k.mac_addresses }
}

output "network_interface_names" {
  value = { for k in proxmox_virtual_environment_vm.this : k.name => k.network_interface_names }
}