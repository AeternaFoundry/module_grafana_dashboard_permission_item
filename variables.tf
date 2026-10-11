variable "dashboard_permission_items" {
  description = <<EOT
Map of dashboard_permission_items, attributes below
Required:
    - dashboard_uid
    - permission
Optional:
    - org_id
    - role
    - team
    - user
EOT

  type = map(object({
    dashboard_uid = string
    permission    = string
    org_id        = optional(string)
    role          = optional(string)
    team          = optional(string)
    user          = optional(string)
  }))
}

