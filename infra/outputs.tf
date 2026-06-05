output "bucket_id" {
  description = "Name (ID) of the S3 bucket."
  value       = aws_s3_bucket.this.id
}

output "bucket_arn" {
  description = "ARN of the S3 bucket."
  value       = aws_s3_bucket.this.arn
}

output "bucket_region" {
  description = "AWS region where the bucket was created."
  value       = aws_s3_bucket.this.region
}

output "custom_policy_arn" {
  description = "ARN of the custom IAM policy."
  value       = aws_iam_policy.s3_custom.arn
}
