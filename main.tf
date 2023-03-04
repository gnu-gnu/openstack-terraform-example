terraform {
  required_providers {
    openstack = {
      source = "terraform-provider-openstack/openstack"
      version = "1.50.0"
    }
  }
}

provider "openstack" {
  user_name = "admin"
  tenant_name = "demo"
  password = var.password
  auth_url = "http://192.168.219.108/identity"
  region = "RegionOne"
}
