resource "multipass_instance" "worker_nodes" {
  count = var.worker_count
  name = "${var.cluster_name}-${terraform.workspace}-worker-${count.index}"
  cpus = var.worker_cpu
  memory = var.worker_ram
  disk = var.worker_disk_size
  image = var.image_name
  cloudinit_file = var.cloud_init_path
  depends_on = [
    local_file.cloudinit
  ]
}