provider "aws" {
  region = var.aws_main_region
}

provider "aws" {
  alias  = "replica"
  region = var.aws_replica_region
}

module "remote_state" {
  source = "nozaq/remote-state-s3-backend/aws"

  providers = {
    aws         = aws
    aws.replica = aws.replica
  }
  enable_replication = false
  override_s3_bucket_name = true # Override default module S3 bucket name
  s3_bucket_name = var.s3_bucket_name
  dynamodb_table_name = var.dynamodb_table_name
}

resource "aws_iam_user" "terraform" {
  name = var.aws_terraform_user_name
}

resource "aws_iam_user_policy_attachment" "remote_state_access" {
  user       = aws_iam_user.terraform.name
  policy_arn = module.remote_state.terraform_iam_policy.arn
}