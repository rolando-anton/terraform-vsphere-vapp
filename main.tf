data "vsphere_datacenter" "dc" {
  name = var.dc
}

data "vsphere_resource_pool" "pool" {
  name          = var.vmrp
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_folder" "folder" {
  path = var.vmfolder
}

resource "vsphere_vapp_container" "vapp" {
  name                    = var.vapp_name
  parent_folder_id        = data.vsphere_folder.folder.id
  parent_resource_pool_id = data.vsphere_resource_pool.pool.id
}
