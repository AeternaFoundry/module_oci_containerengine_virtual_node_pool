variable "containerengine_virtual_node_pools" {
  description = <<EOT
Map of containerengine_virtual_node_pools, attributes below
Required:
    - cluster_id
    - compartment_id
    - display_name
    - size
    - placement_configurations (block):
        - availability_domain (required)
        - fault_domain (required)
        - subnet_id (required)
    - pod_configuration (block):
        - nsg_ids (optional)
        - shape (required)
        - subnet_id (required)
Optional:
    - defined_tags
    - freeform_tags
    - nsg_ids
    - initial_virtual_node_labels (block):
        - key (optional)
        - value (optional)
    - taints (block):
        - effect (optional)
        - key (optional)
        - value (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - virtual_node_pool_cycling_details (block):
        - is_virtual_node_cycling_enabled (optional)
        - maximum_surge (optional)
        - maximum_unavailable (optional)
    - virtual_node_tags (block):
        - defined_tags (optional)
        - freeform_tags (optional)
EOT

  type = map(object({
    cluster_id     = string
    compartment_id = string
    display_name   = string
    size           = number
    defined_tags   = optional(map(string))
    freeform_tags  = optional(map(string))
    nsg_ids        = optional(set(string))
    placement_configurations = list(object({
      availability_domain = string
      fault_domain        = list(string)
      subnet_id           = string
    }))
    pod_configuration = object({
      nsg_ids   = optional(set(string))
      shape     = string
      subnet_id = string
    })
    initial_virtual_node_labels = optional(list(object({
      key   = optional(string)
      value = optional(string)
    })))
    taints = optional(list(object({
      effect = optional(string)
      key    = optional(string)
      value  = optional(string)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    virtual_node_pool_cycling_details = optional(object({
      is_virtual_node_cycling_enabled = optional(bool)
      maximum_surge                   = optional(string)
      maximum_unavailable             = optional(string)
    }))
    virtual_node_tags = optional(object({
      defined_tags  = optional(map(string))
      freeform_tags = optional(map(string))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.containerengine_virtual_node_pools : (
        length(v.placement_configurations) >= 1
      )
    ])
    error_message = "Each placement_configurations list must contain at least 1 items"
  }
}

