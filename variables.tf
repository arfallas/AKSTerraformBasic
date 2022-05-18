variable cluster_name {
    default = "test"
    type = string
    description = "The name of the Managed Kubernetes Cluster to create. Changing this forces a new resource to be created."
}

variable resource_group_name {
    default = "terraform-test"
    type = string
    description = "Specifies the Resource Group where the Managed Kubernetes Cluster should exist. Changing this forces a new resource to be created"
}

variable location {
    default = "southcentralus"
    type = string
    description = "The location where the Managed Kubernetes Cluster should be created. Changing this forces a new resource to be created"
}


variable "cluster_version" {
    default = "1.21.9"
    type = string
    description = "Version of Kubernetes specified when creating the AKS managed cluster. If not specified, the latest recommended version will be used at provisioning time (but won't auto-upgrade)."
}

variable "nodepool_version" {
    default = "1.21.9"
    type = string
    description = "Version of Kubernetes used for the Agents. If not specified, the latest recommended version will be used at provisioning time (but won't auto-upgrade)"
}

variable "nodepool_type" {
  description = "(Optional) The type of Node Pool which should be created. Possible values are AvailabilitySet and VirtualMachineScaleSets. Defaults to VirtualMachineScaleSets."
  type        = string
  default     = "VirtualMachineScaleSets"
}

variable "network_plugin" {
    default = "azure"
    type = string
    description = "Network plugin to use for networking. Currently supported values are azure and kubenet. Changing this forces a new resource to be created."
}

variable "load_balancer_sku"{
    default = "standard"
    type = string
    description = " Specifies the SKU of the Load Balancer used for this Kubernetes Cluster. Possible values are Basic and Standard."
}

variable "sku_linux_vm_size" {
    default = "Standard_D2_v2"
    type = string
    description = "The SKU which should be used for the Linux Virtual Machines used in this Node Pool. Changing this forces a new resource to be created."
}

variable "dns_prefix" {
    default = "arfallask8s"
    type = string
    description = "DNS prefix specified when creating the managed cluster. Changing this forces a new resource to be created"
}

