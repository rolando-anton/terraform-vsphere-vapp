variable "vapp_name" {
  description = "The name of the vApp to create"
}

variable "vmfolder" {
  description = "The path to the folder to put this vApp in, relative to the datacenter that the resource pool is in."
  default     = "vm"
}

variable "dc" {
  description = "Name of the datacenter you want to create the vApp."
}

variable "vmrp" {
  description = "Cluster resource pool that VM will be deployed to. you use following to choose default pool in the cluster (esxi1) or (Cluster)/Resources."
}
