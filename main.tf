terraform {

  required_version = "~> 0.14.0"

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "mikeycmccarthy"

    workspaces {
      name = "terraform-cloud-test"
    }
  }

  required_providers {
    github = {
      version = "~> 4.1.0"
    }
  }
}

provider "github" {
  token        = var.github_token
  organization = var.github_organization
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

resource "github_team" "Sirens" {
  name        = "Sirens"
  description = "Sirens"
  privacy     = "closed"
}

resource "github_team" "Marsa" {
  name        = "Marsa"
  description = "Marsa"
  privacy     = "closed"
}
