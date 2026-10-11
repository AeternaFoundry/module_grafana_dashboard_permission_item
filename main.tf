resource "grafana_dashboard_permission_item" "dashboard_permission_items" {
  for_each = var.dashboard_permission_items

  dashboard_uid = each.value.dashboard_uid
  permission    = each.value.permission
  org_id        = each.value.org_id
  role          = each.value.role
  team          = each.value.team
  user          = each.value.user
}

