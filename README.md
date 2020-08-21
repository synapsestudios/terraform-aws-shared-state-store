# AWS Shared State Store for Terraform

This module creates an encrypted and versioned S3 Bucket and DynamoDB table to be used as a locking shared state stor for Terraform.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | ~> 0.12.6 |
| aws | ~> 2.53 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.53 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | Name of S3 state store, this will be prepended by 'terraform-state-' | `string` | n/a | yes |
| tags | A mapping of tags to assign to the Shared Terraform State Store resources. | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| dynamodb\_table | n/a |
| s3\_bucket | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->