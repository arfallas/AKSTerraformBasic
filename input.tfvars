admin_username                   = "azureuser"
cluster_name                     = "test123"
cluster_version                  = "1.21.9"
create_linux_user_nodepool       = true
dns_prefix                       = "k8scasetest"
identity_type                    = "SystemAssigned"
linux_agent_count                = 1
load_balancer_sku                = "standard"
location                         = "eastus"
network_plugin                   = "azure"
nodepool_type                    = "VirtualMachineScaleSets"
nodepool_version                 = "1.19.9"
resource_group_name              = "aks-terraform-rg"
sku_linux_vm_size                = "Standard_D2_v2"

