output "dynamo_db_table_object" {
  description = "DynamoDb table"
  value       = module.remote_state.dynamodb_table
}

output "s3_bucket_object" {
  description = "S3 Bucket"
  value       = module.remote_state.state_bucket
}