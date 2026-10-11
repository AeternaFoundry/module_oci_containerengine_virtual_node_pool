output "containerengine_virtual_node_pools_id" {
  description = "Map of id values across all containerengine_virtual_node_pools, keyed the same as var.containerengine_virtual_node_pools except keys with no id are omitted"
  value       = { for k, v in oci_containerengine_virtual_node_pool.containerengine_virtual_node_pools : k => v.id if v.id != null && length(v.id) > 0 }
}
output "containerengine_virtual_node_pools_cluster_id" {
  description = "Map of cluster_id values across all containerengine_virtual_node_pools, keyed the same as var.containerengine_virtual_node_pools except keys with no cluster_id are omitted"
  value       = { for k, v in oci_containerengine_virtual_node_pool.containerengine_virtual_node_pools : k => v.cluster_id if v.cluster_id != null && length(v.cluster_id) > 0 }
}
output "containerengine_virtual_node_pools_compartment_id" {
  description = "Map of compartment_id values across all containerengine_virtual_node_pools, keyed the same as var.containerengine_virtual_node_pools except keys with no compartment_id are omitted"
  value       = { for k, v in oci_containerengine_virtual_node_pool.containerengine_virtual_node_pools : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "containerengine_virtual_node_pools_defined_tags" {
  description = "Map of defined_tags values across all containerengine_virtual_node_pools, keyed the same as var.containerengine_virtual_node_pools except keys with no defined_tags are omitted"
  value       = { for k, v in oci_containerengine_virtual_node_pool.containerengine_virtual_node_pools : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "containerengine_virtual_node_pools_display_name" {
  description = "Map of display_name values across all containerengine_virtual_node_pools, keyed the same as var.containerengine_virtual_node_pools except keys with no display_name are omitted"
  value       = { for k, v in oci_containerengine_virtual_node_pool.containerengine_virtual_node_pools : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "containerengine_virtual_node_pools_freeform_tags" {
  description = "Map of freeform_tags values across all containerengine_virtual_node_pools, keyed the same as var.containerengine_virtual_node_pools except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_containerengine_virtual_node_pool.containerengine_virtual_node_pools : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "containerengine_virtual_node_pools_initial_virtual_node_labels" {
  description = "Map of initial_virtual_node_labels values across all containerengine_virtual_node_pools, keyed the same as var.containerengine_virtual_node_pools except keys with no initial_virtual_node_labels are omitted"
  value       = { for k, v in oci_containerengine_virtual_node_pool.containerengine_virtual_node_pools : k => v.initial_virtual_node_labels if v.initial_virtual_node_labels != null && length(v.initial_virtual_node_labels) > 0 }
}
output "containerengine_virtual_node_pools_kubernetes_version" {
  description = "Map of kubernetes_version values across all containerengine_virtual_node_pools, keyed the same as var.containerengine_virtual_node_pools except keys with no kubernetes_version are omitted"
  value       = { for k, v in oci_containerengine_virtual_node_pool.containerengine_virtual_node_pools : k => v.kubernetes_version if v.kubernetes_version != null && length(v.kubernetes_version) > 0 }
}
output "containerengine_virtual_node_pools_lifecycle_details" {
  description = "Map of lifecycle_details values across all containerengine_virtual_node_pools, keyed the same as var.containerengine_virtual_node_pools except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_containerengine_virtual_node_pool.containerengine_virtual_node_pools : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "containerengine_virtual_node_pools_nsg_ids" {
  description = "Map of nsg_ids values across all containerengine_virtual_node_pools, keyed the same as var.containerengine_virtual_node_pools except keys with no nsg_ids are omitted"
  value       = { for k, v in oci_containerengine_virtual_node_pool.containerengine_virtual_node_pools : k => v.nsg_ids if v.nsg_ids != null && length(v.nsg_ids) > 0 }
}
output "containerengine_virtual_node_pools_placement_configurations" {
  description = "Map of placement_configurations values across all containerengine_virtual_node_pools, keyed the same as var.containerengine_virtual_node_pools except keys with no placement_configurations are omitted"
  value       = { for k, v in oci_containerengine_virtual_node_pool.containerengine_virtual_node_pools : k => v.placement_configurations if v.placement_configurations != null && length(v.placement_configurations) > 0 }
}
output "containerengine_virtual_node_pools_pod_configuration" {
  description = "Map of pod_configuration values across all containerengine_virtual_node_pools, keyed the same as var.containerengine_virtual_node_pools except keys with no pod_configuration are omitted"
  value       = { for k, v in oci_containerengine_virtual_node_pool.containerengine_virtual_node_pools : k => one(v.pod_configuration) if v.pod_configuration != null && length(v.pod_configuration) > 0 }
}
output "containerengine_virtual_node_pools_size" {
  description = "Map of size values across all containerengine_virtual_node_pools, keyed the same as var.containerengine_virtual_node_pools except keys with no size are omitted"
  value       = { for k, v in oci_containerengine_virtual_node_pool.containerengine_virtual_node_pools : k => v.size if v.size != null }
}
output "containerengine_virtual_node_pools_state" {
  description = "Map of state values across all containerengine_virtual_node_pools, keyed the same as var.containerengine_virtual_node_pools except keys with no state are omitted"
  value       = { for k, v in oci_containerengine_virtual_node_pool.containerengine_virtual_node_pools : k => v.state if v.state != null && length(v.state) > 0 }
}
output "containerengine_virtual_node_pools_system_tags" {
  description = "Map of system_tags values across all containerengine_virtual_node_pools, keyed the same as var.containerengine_virtual_node_pools except keys with no system_tags are omitted"
  value       = { for k, v in oci_containerengine_virtual_node_pool.containerengine_virtual_node_pools : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "containerengine_virtual_node_pools_taints" {
  description = "Map of taints values across all containerengine_virtual_node_pools, keyed the same as var.containerengine_virtual_node_pools except keys with no taints are omitted"
  value       = { for k, v in oci_containerengine_virtual_node_pool.containerengine_virtual_node_pools : k => v.taints if v.taints != null && length(v.taints) > 0 }
}
output "containerengine_virtual_node_pools_time_created" {
  description = "Map of time_created values across all containerengine_virtual_node_pools, keyed the same as var.containerengine_virtual_node_pools except keys with no time_created are omitted"
  value       = { for k, v in oci_containerengine_virtual_node_pool.containerengine_virtual_node_pools : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "containerengine_virtual_node_pools_time_updated" {
  description = "Map of time_updated values across all containerengine_virtual_node_pools, keyed the same as var.containerengine_virtual_node_pools except keys with no time_updated are omitted"
  value       = { for k, v in oci_containerengine_virtual_node_pool.containerengine_virtual_node_pools : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}
output "containerengine_virtual_node_pools_virtual_node_pool_cycling_details" {
  description = "Map of virtual_node_pool_cycling_details values across all containerengine_virtual_node_pools, keyed the same as var.containerengine_virtual_node_pools except keys with no virtual_node_pool_cycling_details are omitted"
  value       = { for k, v in oci_containerengine_virtual_node_pool.containerengine_virtual_node_pools : k => one(v.virtual_node_pool_cycling_details) if v.virtual_node_pool_cycling_details != null && length(v.virtual_node_pool_cycling_details) > 0 }
}
output "containerengine_virtual_node_pools_virtual_node_tags" {
  description = "Map of virtual_node_tags values across all containerengine_virtual_node_pools, keyed the same as var.containerengine_virtual_node_pools except keys with no virtual_node_tags are omitted"
  value       = { for k, v in oci_containerengine_virtual_node_pool.containerengine_virtual_node_pools : k => one(v.virtual_node_tags) if v.virtual_node_tags != null && length(v.virtual_node_tags) > 0 }
}

