resource "openstack_compute_flavor_v2" "k8s-node" {
  name = var.flavor_name
  ram = var.memory_allocate
  vcpus = var.cpu_cores
  disk = var.disk_size
  is_public = "true"
 
  extra_specs = {
    "hw_rng:allowed" = "true"
  }
  
}
