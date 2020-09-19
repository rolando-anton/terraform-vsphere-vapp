# Terraform vSphere vApp Module

For create vApps that could be used later to include resources inside.

Example:
```
module "vapp-test" {
  source    = "../terraform_vsphere_vapp"
  dc        = "Home"
  vmrp      = "/Home/host/Aiur"
  vapp_name = "Test01"
}
```
