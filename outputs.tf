output "project_memberships_id" {
  description = "Map of id values across all project_memberships, keyed the same as var.project_memberships except keys with no id are omitted"
  value       = { for k, v in gitlab_project_membership.project_memberships : k => v.id if v.id != null && length(v.id) > 0 }
}
output "project_memberships_access_level" {
  description = "Map of access_level values across all project_memberships, keyed the same as var.project_memberships except keys with no access_level are omitted"
  value       = { for k, v in gitlab_project_membership.project_memberships : k => v.access_level if v.access_level != null && length(v.access_level) > 0 }
}
output "project_memberships_expires_at" {
  description = "Map of expires_at values across all project_memberships, keyed the same as var.project_memberships except keys with no expires_at are omitted"
  value       = { for k, v in gitlab_project_membership.project_memberships : k => v.expires_at if v.expires_at != null && length(v.expires_at) > 0 }
}
output "project_memberships_member_role_id" {
  description = "Map of member_role_id values across all project_memberships, keyed the same as var.project_memberships except keys with no member_role_id are omitted"
  value       = { for k, v in gitlab_project_membership.project_memberships : k => v.member_role_id if v.member_role_id != null }
}
output "project_memberships_project" {
  description = "Map of project values across all project_memberships, keyed the same as var.project_memberships except keys with no project are omitted"
  value       = { for k, v in gitlab_project_membership.project_memberships : k => v.project if v.project != null && length(v.project) > 0 }
}
output "project_memberships_user_id" {
  description = "Map of user_id values across all project_memberships, keyed the same as var.project_memberships except keys with no user_id are omitted"
  value       = { for k, v in gitlab_project_membership.project_memberships : k => v.user_id if v.user_id != null }
}

