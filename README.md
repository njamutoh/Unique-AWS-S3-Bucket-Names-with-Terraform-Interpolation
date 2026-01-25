# Unique-AWS-S3-Bucket-Names-with-Terraform-Interpolation
Solving the issue of  `BucketAlreadyExists` errors due to AWS S3’s globally unique naming requirement

# Terraform Project — Auto-Generate Unique AWS S3 Bucket Names

This project demonstrates how to use **Terraform interpolation** and the **random provider** to automatically generate **globally unique S3 bucket names** in AWS.

It solves a common problem:  
❌ `BucketAlreadyExists` errors due to S3’s global naming requirement

By dynamically constructing bucket names using project, environment, region, and a random suffix, this configuration ensures **consistent naming across environments** while maintaining **global uniqueness**.

---

## What This Project Does

Terraform creates:

- An AWS S3 bucket with a dynamically generated name
- A random unique suffix to prevent name collisions
- Standardized tagging across resources
- Outputs to display bucket details after deployment

Example generated bucket name:
myproject1-test1-us-east-1-a1b2c3d4e5f6




