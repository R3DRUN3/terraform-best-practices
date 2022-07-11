# Provider Spec
terraform {
  backend "s3" {
    bucket = "terraform-best-practice-bucket"
    key  = "tf/terraform.tfstate"
    region = "eu-central-1"
  }
}

provider "aws" {
  region = var.aws_main_region
}
