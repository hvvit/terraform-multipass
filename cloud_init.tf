locals {
  cloudinit_file = <<-EOT
    #cloud-config
    chpasswd: { expire: False  }
    sudo: ALL=(ALL) NOPASSWD:ALL
    ssh_authorized_keys:
      - ${file("~/.ssh/id_rsa.pub")}
    EOT
}

resource "local_file" "cloudinit" {
  filename = var.cloud_init_path
  content  = local.cloudinit_file
}