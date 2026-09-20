resource "msgraph_resource_collection" "resource_collections" {
  for_each = var.resource_collections

  url                    = each.value.url
  api_version            = each.value.api_version
  read_query_parameters  = each.value.read_query_parameters
  reference_ids          = each.value.reference_ids
  response_export_values = each.value.response_export_values
  retry                  = each.value.retry
  skip_destroy           = each.value.skip_destroy

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

