module "promserv_vm" {
  source = "../modules/vm"
  node   = var.node
  pool   = var.pool

  name  = "promserv"
  vm_id = "109"

  clone = data.proxmox_virtual_environment_vm.debian_cloud_vm_template.vm_id

  cores  = 4
  memory = 8192

  disk = {
    // gigabytes
    size    = 64
    storage = var.storage.disk
  }

  network = {
    bridge          = var.network.bridge
    internal_bridge = proxmox_virtual_environment_network_linux_bridge.internal_bridge.name
  }

  admins = [
    local.users["prom"]
  ]
}
