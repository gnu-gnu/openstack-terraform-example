resource "openstack_compute_instance_v2" "instances"{
  for_each = toset(var.resource_names)
  name = each.key
  image_id = var.image_id
  flavor_name = var.flavor_name
  security_groups = ["default"]
  user_data = file("init.conf")

  network {
    name = var.network_name
  }

  depends_on = [
   openstack_compute_flavor_v2.k8s-node
  ]
}
