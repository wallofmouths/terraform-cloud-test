provider "github" {
  token        = var.github_token
  organization = var.github_organization
}

resource "github_repository" "example" {
  name        = "example"
  description = "My awesome codebase"
  private     = false
}
