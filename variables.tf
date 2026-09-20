variable "resource_collections" {
  description = <<EOT
Map of resource_collections, attributes below
Required:
    - url
Optional:
    - api_version
    - read_query_parameters
    - reference_ids
    - response_export_values
    - retry
    - skip_destroy
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    url                    = string
    api_version            = optional(string)
    read_query_parameters  = optional(map(any))
    reference_ids          = optional(list(string))
    response_export_values = optional(map(string))
    retry = optional(object({
      error_message_regex = list(string)
    }))
    skip_destroy = optional(bool)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

