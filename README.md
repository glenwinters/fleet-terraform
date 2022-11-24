# fleet-terraform

Terraform for Fleet infrastructure

## Architecture

TODO

## CI

Each commit on a pull request will trigger a format check and plan.

Each commit on main will trigger an apply.

### Secrets

#### AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY

AWS user key pair for provisioning AWS resources

#### TF_API_TOKEN

A [Terraform Cloud API token](terraform-cloud-api-tokens).

[terraform-cloud-api-tokens]: https://www.terraform.io/cloud-docs/users-teams-organizations/users#api-tokens
