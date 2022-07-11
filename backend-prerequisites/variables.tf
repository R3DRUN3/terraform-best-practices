variable "aws_main_region" {
  type = string
  description = "Main Backend Region"
  default = "eu-central-1"
}

variable "aws_replica_region" {
  type = string
  description = "Replica Backend Region"
  default = "eu-west-1"
}

variable "s3_bucket_name" {
  type = string
  description = "Name of the S3 Backend Bucket"
  default = "terraform-best-practice-bucket"
}

variable "dynamodb_table_name" {
  type = string
  description = "Name of the DynamoDB Table for Terraform State Lock"
  default = "terraform-state-lock"
}

variable "aws_terraform_user_name" {
  type = string
  default = "terraform-user"
}