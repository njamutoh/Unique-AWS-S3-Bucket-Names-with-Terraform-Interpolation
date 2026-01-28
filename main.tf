data "aws_region" "current" {}
resource "random_id" "bucket_id" {
  byte_length = 6
}
resource "aws_s3_bucket" "name" {
  bucket = lower("${var.project_name}-${var.environment}-${data.aws_region.current.name}-${random_id.bucket_id.hex}")
  
  tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}
