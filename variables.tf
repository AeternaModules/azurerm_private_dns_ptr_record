variable "private_dns_ptr_records" {
  description = <<EOT
Map of private_dns_ptr_records, attributes below
Required:
    - name
    - private_dns_zone_id
    - records
    - ttl
Optional:
    - tags
EOT

  type = map(object({
    name                = string
    private_dns_zone_id = string
    records             = set(string)
    ttl                 = number
    tags                = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.private_dns_ptr_records : (
        length(trimspace(v.name)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
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

