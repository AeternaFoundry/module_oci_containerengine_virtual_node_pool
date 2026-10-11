resource "oci_containerengine_virtual_node_pool" "containerengine_virtual_node_pools" {
  for_each = var.containerengine_virtual_node_pools

  cluster_id     = each.value.cluster_id
  compartment_id = each.value.compartment_id
  display_name   = each.value.display_name
  size           = each.value.size
  defined_tags   = each.value.defined_tags
  freeform_tags  = each.value.freeform_tags
  nsg_ids        = each.value.nsg_ids

  dynamic "placement_configurations" {
    for_each = each.value.placement_configurations
    content {
      availability_domain = placement_configurations.value.availability_domain
      fault_domain        = placement_configurations.value.fault_domain
      subnet_id           = placement_configurations.value.subnet_id
    }
  }

  pod_configuration {
    nsg_ids   = each.value.pod_configuration.nsg_ids
    shape     = each.value.pod_configuration.shape
    subnet_id = each.value.pod_configuration.subnet_id
  }

  dynamic "initial_virtual_node_labels" {
    for_each = each.value.initial_virtual_node_labels != null ? each.value.initial_virtual_node_labels : []
    content {
      key   = initial_virtual_node_labels.value.key
      value = initial_virtual_node_labels.value.value
    }
  }

  dynamic "taints" {
    for_each = each.value.taints != null ? each.value.taints : []
    content {
      effect = taints.value.effect
      key    = taints.value.key
      value  = taints.value.value
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "virtual_node_pool_cycling_details" {
    for_each = each.value.virtual_node_pool_cycling_details != null ? [each.value.virtual_node_pool_cycling_details] : []
    content {
      is_virtual_node_cycling_enabled = virtual_node_pool_cycling_details.value.is_virtual_node_cycling_enabled
      maximum_surge                   = virtual_node_pool_cycling_details.value.maximum_surge
      maximum_unavailable             = virtual_node_pool_cycling_details.value.maximum_unavailable
    }
  }

  dynamic "virtual_node_tags" {
    for_each = each.value.virtual_node_tags != null ? [each.value.virtual_node_tags] : []
    content {
      defined_tags  = virtual_node_tags.value.defined_tags
      freeform_tags = virtual_node_tags.value.freeform_tags
    }
  }
}

