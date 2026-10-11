resource "gitlab_project_membership" "project_memberships" {
  for_each = var.project_memberships

  access_level   = each.value.access_level
  project        = each.value.project
  user_id        = each.value.user_id
  expires_at     = each.value.expires_at
  member_role_id = each.value.member_role_id
}

