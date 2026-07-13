variable "private_dns_ptr_records" {
  description = <<EOT
Map of private_dns_ptr_records, attributes below
Required:
    - name
    - records
    - resource_group_name
    - ttl
    - zone_name
Optional:
    - tags
EOT

  type = map(object({
    name                = string
    records             = set(string)
    resource_group_name = string
    ttl                 = number
    zone_name           = string
    tags                = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.private_dns_ptr_records : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.private_dns_ptr_records : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.private_dns_ptr_records : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.private_dns_ptr_records : (
        length(v.zone_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.private_dns_ptr_records : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

