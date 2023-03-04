resource "openstack_compute_instance_v2" "master_instances"{
  for_each = toset(var.master_nodes)
  name = each.key
  image_id = var.image_id
  flavor_name = var.master_flavor_name
  security_groups = ["default"]
  user_data = file("init.conf")

  network {
    name = var.network_name
  }

  depends_on = [
   openstack_compute_flavor_v2.k8s_master
  ]
}
resource "openstack_compute_instance_v2" "worker_instances"{
  for_each = toset(var.worker_nodes)
  name = each.key
  image_id = var.image_id
  flavor_name = var.worker_flavor_name
  security_groups = ["default"]
  user_data = file("init.conf")

  network {
    name = var.network_name
  }

  depends_on = [
   openstack_compute_flavor_v2.k8s_worker
  ]
}
