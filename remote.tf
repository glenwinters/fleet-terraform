terraform {
  backend "remote" {
    organization = "glenwinters"

    workspaces {
      tags = ["fleet"]
    }
  }
}
