terraform {
  required_providers {
    teleport = {
      source  = "terraform.releases.teleport.dev/gravitational/teleport"
      version = "~> 14.0"
    }
  }
}

provider "teleport" {
  # Update addr to point to your Teleport Cloud tenant URL's host:port
  addr               = "leaf.tele.ottr.sh:443"
  identity_file_path = "terraform-identity"
}

resource "teleport_role" "machineid-spacelift-test" {
  metadata = {
    name        = "machineid-spacelift-test"
    description = "Terraform test role"
    labels = {
      example = "yes"
    }
  }

  spec = {}
}
