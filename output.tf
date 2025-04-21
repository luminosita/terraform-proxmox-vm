output "ipv4_addresses" {
    value = [ for k in proxmox_virtual_environment_vm.this : k.ipv4_addresses ]
}

output "mac_addresses" {
    value = { for k in proxmox_virtual_environment_vm.this : k.node_name => k.mac_addresses }
}