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
