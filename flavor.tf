resource "openstack_compute_flavor_v2" "k8s_master" {
  name = var.master_flavor_name
  ram = var.memory_allocate
  vcpus = var.master_cpu_cores
  disk = var.disk_size
  is_public = "true"
 
  extra_specs = {
    "hw_rng:allowed" = "true"
  }
  
}
resource "openstack_compute_flavor_v2" "k8s_worker" {
  name = var.worker_flavor_name
  ram = var.memory_allocate
  vcpus = var.worker_cpu_cores
  disk = var.disk_size
  is_public = "true"
 
  extra_specs = {
    "hw_rng:allowed" = "true"
  }
} 
