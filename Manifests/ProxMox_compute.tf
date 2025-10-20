terraform {
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "~> 0.85.1"
    }
  }
}

provider "proxmox" {
  endpoint = "https://192.168.122.69:8006/api2/json"
  username = var.tf_user
  password = var.pm_password
  insecure = true
}

variable "vm_count" {
  default = 2
}

variable "ssh_pub_key_path" {
  default = "/home/vpn_admin/.ssh/id_rsa.pub"
}

variable "pm_password" {
  description = "Password for Proxmox root user"
  type        = string
  sensitive   = true
}

variable "tf_user" {
  default = "root@pam"
}

locals {
  ssh_pub_key = file(var.ssh_pub_key_path)
}

resource "proxmox_virtual_environment_vm" "pm_guest" {
  count     = var.vm_count
  name      = "pm-Ubuntu-guest-${count.index + 1}"
  node_name = "infrak8-prod1"
  started   = true

  cpu {
    cores = 2
  }

  memory {
    dedicated = 2048
  }

  disk {
    datastore_id = "local-lvm"
    size         = 20
    interface    = "scsi0"
  }

  network_device {
    bridge = "vmbr0"
    model  = "virtio"
  }

  cdrom {
    file_id = "local:iso/ubuntu-24.04.3-live-server-amd64.iso"
  }

  initialization {
    user_account {
      keys = [local.ssh_pub_key]
    }
  }
}
