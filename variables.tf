variable "aws_region" {
  description = "The AWS region resources are deployed in"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "The environment for the resources (e.g., dev, staging, prod)"
  type        = string
  default     = "test1"
}

variable "project_name" {
  description = "The name of the project"
  type        = string
  default     = "myproject1"
}

