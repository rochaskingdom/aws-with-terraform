terraform {
  required_version = "1.0.1"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.48.0"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
}

resource "aws_s3_bucket" "my-bucket" {
  bucket = "my-tf-test-bucket-325345346562"
  acl = "private"

  tags = {
    Name = "My bucket"
    Environment = "Dev"
    Managedby = "Terraform"
  }
}