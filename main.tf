provider "github" {
  token        = "${var.gh_token}"
  organization = "${var.gh_org}"
}

resource "github_repository" "example" {
  name        = "example"
  description = "My awesome codebase"
  private     = false
}
