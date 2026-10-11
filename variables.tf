variable "project_memberships" {
  description = <<EOT
Map of project_memberships, attributes below
Required:
    - access_level
    - project
    - user_id
Optional:
    - expires_at
    - member_role_id
EOT

  type = map(object({
    access_level   = string
    project        = string
    user_id        = number
    expires_at     = optional(string)
    member_role_id = optional(number)
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

