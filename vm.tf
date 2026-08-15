resource "proxmox_virtual_env_vm" "web01" {
  name = "web-server-01"
  node_name = var.target_node
  tags = ["opentofu", "web"]

  clone {
    vm_id = var.template_id
    full = true
  }

  cpu {
    cores = 2
    type = "host"
  }

  memory {
    dedicated = 2048
  }

  agent {
    enabled = true
  }

  initialization { 
    ip_config {
      ipv4 {
        address = "dhcp"
      }
    }
    dns {
      servers = [ var.gateway ]
    }
  }
}