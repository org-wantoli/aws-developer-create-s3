variable "aws_region" {
  description = "AWS region where resources will be created."
  type        = string
  default     = "us-east-1"
}

variable "aws_profile" {
  description = "AWS CLI profile used to authenticate."
  type        = string
  default     = ""
}

variable "bucket_name" {
  description = "Globally unique name for the S3 bucket."
  type        = string
}

variable "environment" {
  description = "Deployment environment (e.g. production, staging, development)."
  type        = string
  default     = "production"
}

variable "force_destroy" {
  description = "Allow bucket deletion even when it contains objects."
  type        = bool
  default     = false
}
