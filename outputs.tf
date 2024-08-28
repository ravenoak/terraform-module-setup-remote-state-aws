output "bucket_arn" {
  value       = aws_s3_bucket.terraform_state.arn
  description = "The ARN of the S3 bucket that holds Terraform state"
}

output "table_arn" {
  value       = aws_dynamodb_table.terraform_state_lock.arn
  description = "The ARN of the DynamoDB table that holds Terraform state locks"
}
