locals {
  environment = split("-", terraform.workspace)[1]
}

output "environment" {
  value = local.environment
}

resource "aws_iam_user" "test" {
  name = "justatest"
}
