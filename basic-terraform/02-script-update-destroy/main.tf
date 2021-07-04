terraform {
  required_version = "1.0.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.48.0"
    }
  }
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs#environment-variables
provider "aws" {
  region  = "us-east-1"
}

# terraform validate
# terraform fmt
# terraform plan -out="tfplan.out"
# terraform destroy
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket#private-bucket-w-tags
resource "aws_s3_bucket" "my-bucket" {
  bucket = "my-tf-test-bucket-325345346562"
  acl = "private"

  tags = {
    Name = "My bucket"
    Environment = "Dev"
    ManagedBy = "Terraform"
  }
}