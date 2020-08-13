provider "github" {
  token        = var.github_token
  organization = var.github_organization
}

resource "github_repository" "example" {
  name        = "example"
  description = "My awesome codebase"
  private     = false
}

resource "github_team" "Gudja-United" {
  name        = "Gudja United"
  description = "Gudja United"
  privacy     = "closed"
}

resource "github_team" "Sliema-Wanderers" {
  name        = "Sliema Wanderers"
  description = "Sliema Wanderers"
  privacy     = "closed"
}

resource "github_branch" "development" {
  repository = "example"
  branch     = "development"
}
