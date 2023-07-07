terraform {
  cloud {
    organization = "c-base-nerdserv"
    workspaces {
      name = "nerdserv"
    }
  }

  required_providers {
    proxmox = {
      source  = "ForsakenHarmony/proxmox"
      version = "0.0.0-canary.16"
    }
  }

  required_version = ">= 1.5.0"
}
