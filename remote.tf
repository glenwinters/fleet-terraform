terraform {
  cloud {
    organization = "glenwinters"

    workspaces {
      tags = ["fleet"]
    }
  }
}
