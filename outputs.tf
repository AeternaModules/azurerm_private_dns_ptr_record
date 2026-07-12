output "private_dns_ptr_records_fqdn" {
  description = "Map of fqdn values across all private_dns_ptr_records, keyed the same as var.private_dns_ptr_records"
  value       = { for k, v in azurerm_private_dns_ptr_record.private_dns_ptr_records : k => v.fqdn }
}
output "private_dns_ptr_records_name" {
  description = "Map of name values across all private_dns_ptr_records, keyed the same as var.private_dns_ptr_records"
  value       = { for k, v in azurerm_private_dns_ptr_record.private_dns_ptr_records : k => v.name }
}
output "private_dns_ptr_records_records" {
  description = "Map of records values across all private_dns_ptr_records, keyed the same as var.private_dns_ptr_records"
  value       = { for k, v in azurerm_private_dns_ptr_record.private_dns_ptr_records : k => v.records }
}
output "private_dns_ptr_records_resource_group_name" {
  description = "Map of resource_group_name values across all private_dns_ptr_records, keyed the same as var.private_dns_ptr_records"
  value       = { for k, v in azurerm_private_dns_ptr_record.private_dns_ptr_records : k => v.resource_group_name }
}
output "private_dns_ptr_records_tags" {
  description = "Map of tags values across all private_dns_ptr_records, keyed the same as var.private_dns_ptr_records"
  value       = { for k, v in azurerm_private_dns_ptr_record.private_dns_ptr_records : k => v.tags }
}
output "private_dns_ptr_records_ttl" {
  description = "Map of ttl values across all private_dns_ptr_records, keyed the same as var.private_dns_ptr_records"
  value       = { for k, v in azurerm_private_dns_ptr_record.private_dns_ptr_records : k => v.ttl }
}
output "private_dns_ptr_records_zone_name" {
  description = "Map of zone_name values across all private_dns_ptr_records, keyed the same as var.private_dns_ptr_records"
  value       = { for k, v in azurerm_private_dns_ptr_record.private_dns_ptr_records : k => v.zone_name }
}

