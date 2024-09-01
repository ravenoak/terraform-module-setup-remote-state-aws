<!-- BEGIN_TF_DOCS -->
# tf-module-tf-remote-state-aws
A simple Terraform module for setting up remote state for a project. This module creates an S3 bucket and DynamoDB table
for Terraform remote state.

## Usage
```hcl
module "remote_state" {
  source      = "github.com/ravenoak/tf-module-tf-remote-state-aws.git"
  bucket_name = "my-remote-state-bucket"
  table_name  = "my-remote-state-lock-table"
}
```

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_dynamodb_table.terraform_state_lock](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table) | resource |
| [aws_s3_bucket.terraform_state](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | The name of the S3 bucket to create to hold Terraform state | `string` | n/a | yes |
| <a name="input_table_name"></a> [table\_name](#input\_table\_name) | The name of the DynamoDB table to create to hold Terraform state locks | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket_arn"></a> [bucket\_arn](#output\_bucket\_arn) | The ARN of the S3 bucket that holds Terraform state |
| <a name="output_table_arn"></a> [table\_arn](#output\_table\_arn) | The ARN of the DynamoDB table that holds Terraform state locks |
<!-- END_TF_DOCS -->
