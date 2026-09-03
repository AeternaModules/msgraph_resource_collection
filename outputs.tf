output "resource_collections_id" {
  description = "Map of id values across all resource_collections, keyed the same as var.resource_collections"
  value       = { for k, v in msgraph_resource_collection.resource_collections : k => v.id if v.id != null && length(v.id) > 0 }
}
output "resource_collections_api_version" {
  description = "Map of api_version values across all resource_collections, keyed the same as var.resource_collections"
  value       = { for k, v in msgraph_resource_collection.resource_collections : k => v.api_version if v.api_version != null && length(v.api_version) > 0 }
}
output "resource_collections_output" {
  description = "Map of output values across all resource_collections, keyed the same as var.resource_collections"
  value       = { for k, v in msgraph_resource_collection.resource_collections : k => v.output if v.output != null }
}
output "resource_collections_read_query_parameters" {
  description = "Map of read_query_parameters values across all resource_collections, keyed the same as var.resource_collections"
  value       = { for k, v in msgraph_resource_collection.resource_collections : k => v.read_query_parameters if v.read_query_parameters != null && length(v.read_query_parameters) > 0 }
}
output "resource_collections_reference_ids" {
  description = "Map of reference_ids values across all resource_collections, keyed the same as var.resource_collections"
  value       = { for k, v in msgraph_resource_collection.resource_collections : k => v.reference_ids if v.reference_ids != null && length(v.reference_ids) > 0 }
}
output "resource_collections_response_export_values" {
  description = "Map of response_export_values values across all resource_collections, keyed the same as var.resource_collections"
  value       = { for k, v in msgraph_resource_collection.resource_collections : k => v.response_export_values if v.response_export_values != null && length(v.response_export_values) > 0 }
}
output "resource_collections_retry" {
  description = "Map of retry values across all resource_collections, keyed the same as var.resource_collections"
  value       = { for k, v in msgraph_resource_collection.resource_collections : k => v.retry if v.retry != null && length(v.retry) > 0 }
}
output "resource_collections_skip_destroy" {
  description = "Map of skip_destroy values across all resource_collections, keyed the same as var.resource_collections"
  value       = { for k, v in msgraph_resource_collection.resource_collections : k => v.skip_destroy if v.skip_destroy != null }
}
output "resource_collections_url" {
  description = "Map of url values across all resource_collections, keyed the same as var.resource_collections"
  value       = { for k, v in msgraph_resource_collection.resource_collections : k => v.url if v.url != null && length(v.url) > 0 }
}

