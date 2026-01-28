output "bucket_name" {
  description = "The name of the S3 bucket created"
  value       = aws_s3_bucket.name.bucket
}

output "aws_region" {
  description = "The AWS region where resources are deployed"
  value       = data.aws_region.current.name
}

output "environment" {
  description = "The environment for the resources"
  value       = var.environment
}

output "project_name" {
  description = "The name of the project"
  value       = var.project_name
}

output "bucket_id" {
  description = "The random ID appended to the bucket name"
  value       = random_id.bucket_id.hex
}

output "bucket_arn" {
  description = "The ARN of the S3 bucket created"
  value       = aws_s3_bucket.name.arn
}
