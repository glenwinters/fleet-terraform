# fleet-terraform

Terraform for Fleet infrastructure

## CI

Each commit on a pull request will trigger a format check and plan.

Each commit on main will trigger an apply.

### Secrets

#### GCP_PROJECT_ID_PRODUCTION

This should be the GCP project ID for Terraform resources to be spun up in.

Example: hello-1234

#### GCP_WORKLOAD_IDENTITY_PROVIDER_PRODUCTION

This should be the path of the audience URL. You can find that by going
to the GCP project's workload identity federation and then click edit on the
provider. It's under "Default audience".

Example: projects/123456789/locations/global/workloadIdentityPools/my-pool/providers/my-provider

#### GCP_SERVICE_ACCOUNT_PRODUCTION

This should be the GCP service account associated with the workload identity
provider.

Example: some-name@project-id.iam.gserviceaccount.com

#### TF_API_TOKEN

A [Terraform Cloud API token](terraform-cloud-api-tokens).

[terraform-cloud-api-tokens]: https://www.terraform.io/cloud-docs/users-teams-organizations/users#api-tokens

## Other infrastructure

I manually setup the identity federation for GitHub Actions because
[its terraform resource][terraform-identity-pool] is in beta and I'd have to
temporarily setup an alternative way to authenticate. I followed
[this guide][gcp-github-actions-auth].

[terraform-identity-pool]: https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/iam_workload_identity_pool
[gcp-github-actions-auth]: https://cloud.google.com/blog/products/identity-security/enabling-keyless-authentication-from-github-actions
