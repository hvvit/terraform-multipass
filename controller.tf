resource "multipass_instance" "controller_nodes" {
  count          = var.controller_count
  name           = "${var.cluster_name}-${terraform.workspace}-controller-${count.index}"
  cpus           = var.controller_cpu
  memory         = var.controller_ram
  disk           = var.controller_disk_size
  image          = var.image_name
  cloudinit_file = var.cloud_init_path
  depends_on = [
    local_file.cloudinit
  ]
}