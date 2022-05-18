provider "azurerm" {
    # The "feature" block is required for AzureRM provider 2.x. 
    # If you are using version 1.x, the "features" block is not allowed.
    #version = "=2.40.0"
    features {}
}

resource "azurerm_resource_group" "k8s" {
    name     = var.resource_group_name
    location = var.location
}


resource "azurerm_kubernetes_cluster" "k8s" {
    name                = var.cluster_name
    location            = azurerm_resource_group.k8s.location
    resource_group_name = azurerm_resource_group.k8s.name
    dns_prefix          = var.dns_prefix
    kubernetes_version  = var.cluster_version 

    identity {
        type = "SystemAssigned"
    }

    default_node_pool {
        name                 = "agentpool"
        node_count           = 1
        vm_size              = var.sku_linux_vm_size
        orchestrator_version = var.nodepool_version
        type                 = var.nodepool_type

    }

    network_profile {
        load_balancer_sku  = var.load_balancer_sku
        network_plugin     = var.network_plugin
        dns_service_ip     = var.network_plugin == "azure" ? "10.0.0.10" : null
        docker_bridge_cidr = var.network_plugin == "azure" ? "170.10.0.1/16" : null
        service_cidr       = var.network_plugin == "azure" ? "10.0.0.0/16" : null
    }

    tags = {
        Environment = "Case Testing"
    }
}



