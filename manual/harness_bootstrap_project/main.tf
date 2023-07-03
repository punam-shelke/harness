resource "harness_platform_project" "test" {
  identifier  = local.project_name
  name        = local.project_name
  org_id      = local.organisation
  color       = local.project_color
  description = local.project_description
}

terraform {
  required_providers {
    harness = {
      source = "harness/harness"
    }
  }
}
