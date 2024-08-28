variable "bucket_name" {
  description = "The name of the S3 bucket to create to hold Terraform state"
  type        = string
}

variable "table_name" {
  description = "The name of the DynamoDB table to create to hold Terraform state locks"
  type        = string
}
