
data "aws_region" "current" {}

resource "random_id" "bucket_id" {
  byte_length = 6
}

resource "random_id" "bucket_id_logs" {
  byte_length = 6
}

locals {
  region        = data.aws_region.current.name
  bucket_prefix = "${var.project_name}-${var.environment}"

  UniqueID    = random_id.bucket_id.hex
  
  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}

resource "aws_s3_bucket" "primary_bkt" {
  bucket = lower("${local.bucket_prefix}-${local.region}-${random_id.bucket_id.hex}")

  tags = local.common_tags
}

resource "aws_s3_bucket" "logs_bkt" {
  bucket = lower("${local.bucket_prefix}-${local.UniqueID}")

  tags = local.common_tags
}

