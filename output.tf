output "primary_bucket_name" {
  description = "The name of the primary S3 bucket"
  value       = aws_s3_bucket.primary_bkt.bucket
}

output "logs_bucket_name" {
  description = "The name of the logs S3 bucket"
  value       = aws_s3_bucket.logs_bkt.bucket
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

output "primary_bucket_arn" {
  description = "The ARN of the primary S3 bucket"
  value       = aws_s3_bucket.primary_bkt.arn
}

output "logs_bucket_arn" {
  description = "The ARN of the logs S3 bucket"
  value       = aws_s3_bucket.logs_bkt.arn
}