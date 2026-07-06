output "private_dns_ptr_records" {
  description = "All private_dns_ptr_record resources"
  value       = azurerm_private_dns_ptr_record.private_dns_ptr_records
}
output "private_dns_ptr_records_fqdn" {
  description = "List of fqdn values across all private_dns_ptr_records"
  value       = [for k, v in azurerm_private_dns_ptr_record.private_dns_ptr_records : v.fqdn]
}
output "private_dns_ptr_records_name" {
  description = "List of name values across all private_dns_ptr_records"
  value       = [for k, v in azurerm_private_dns_ptr_record.private_dns_ptr_records : v.name]
}
output "private_dns_ptr_records_records" {
  description = "List of records values across all private_dns_ptr_records"
  value       = [for k, v in azurerm_private_dns_ptr_record.private_dns_ptr_records : v.records]
}
output "private_dns_ptr_records_resource_group_name" {
  description = "List of resource_group_name values across all private_dns_ptr_records"
  value       = [for k, v in azurerm_private_dns_ptr_record.private_dns_ptr_records : v.resource_group_name]
}
output "private_dns_ptr_records_tags" {
  description = "List of tags values across all private_dns_ptr_records"
  value       = [for k, v in azurerm_private_dns_ptr_record.private_dns_ptr_records : v.tags]
}
output "private_dns_ptr_records_ttl" {
  description = "List of ttl values across all private_dns_ptr_records"
  value       = [for k, v in azurerm_private_dns_ptr_record.private_dns_ptr_records : v.ttl]
}
output "private_dns_ptr_records_zone_name" {
  description = "List of zone_name values across all private_dns_ptr_records"
  value       = [for k, v in azurerm_private_dns_ptr_record.private_dns_ptr_records : v.zone_name]
}

